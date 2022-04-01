<?php


function theme_enqueue_styles() {
    wp_enqueue_style( 'child-style', get_stylesheet_directory_uri() . '/style.css' );
    wp_enqueue_style( 'font-style',  'https://use.typekit.net/lae7hau.css' );    
    wp_enqueue_style( 'slick-style', get_stylesheet_directory_uri() . '/assets/css/slick.css' );
    wp_enqueue_style( 'custom-style', get_stylesheet_directory_uri() . '/assets/css/custom.css', array( 'fusion-dynamic-css' ) );
    wp_enqueue_style( 'responsive-style', get_stylesheet_directory_uri() . '/assets/css/responsive.css' );
    wp_enqueue_style( 'fontawesome-style', 'https://pro.fontawesome.com/releases/v5.10.0/css/all.css', array( 'fusion-dynamic-css' ) );




    wp_enqueue_script( 'slick-script',get_stylesheet_directory_uri() . '/assets/js/slick.min.js', array('jquery'));
    wp_enqueue_script( 'global-script',get_stylesheet_directory_uri() . '/assets/js/global.js', array('jquery'));


    if(is_user_logged_in()){
        $current_user = wp_get_current_user();

        wp_localize_script( 'global-script', 'is_user_logged_in',
                array( 
                    
                    'first_name' => $current_user->user_firstname,
                    'last_name' => $current_user->user_lastname,
                    'user_email' => $current_user->user_email,
                )
            );
    }
}
add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );

function avada_lang_setup() {
	$lang = get_stylesheet_directory() . '/languages';
	load_child_theme_textdomain( 'Avada', $lang );
}
add_action( 'after_setup_theme', 'avada_lang_setup' );


function getmyQuizResult(){
    global $wpdb;
    ob_start();
    ?>
        <div class="righttsec">
        
        <?php 

            $current_user = wp_get_current_user();
            $search_phrase_sql = '';
                $table_limit       = 40;

                    $delete = 'deleted=0';

            $delete  = apply_filters( 'qsm_results_delete_clause', $delete );
            $order_by_sql      = 'ORDER BY time_taken_real DESC';


            $qsm_results_count = $wpdb->get_var( "SELECT COUNT(result_id) FROM {$wpdb->prefix}mlw_results WHERE {$delete} AND user={get_current_user_id()}  {$search_phrase_sql}" );


            $result_page  = 0;
            $result_begin = 0;
            
            
            $results_left = $qsm_results_count - ( $result_page * $table_limit );
            if ( isset( $_GET['quiz_id'] ) && ! empty( $_GET['quiz_id'] ) ) {

                $quiz_id       = intval( $_GET['quiz_id'] );
                $mlw_quiz_data = $wpdb->get_results(stripslashes( $wpdb->prepare( "SELECT * FROM {$wpdb->prefix}mlw_results WHERE $delete AND user=get_current_user_id() AND quiz_id = %d $search_phrase_sql $order_by_sql LIMIT %d, %d", $quiz_id, $result_begin, $table_limit ) ) );
            } else {
                $mlw_quiz_data = $wpdb->get_results(stripslashes( $wpdb->prepare( "SELECT * FROM {$wpdb->prefix}mlw_results WHERE user=".get_current_user_id()." AND "."$delete $search_phrase_sql $order_by_sql LIMIT %d, %d", $result_begin, $table_limit ) ) );
            }


          ?>

        
        <?php wp_nonce_field( 'bulk_delete', 'bulk_delete_nonce' );

        $th_elements = apply_filters( 'mlw_qmn_admin_results_page_headings', array(
                            'score'         => __( 'Score', 'quiz-master-next' ),
                            'time_complete' => __( 'Time To Complete', 'quiz-master-next' ),
                            'time_taken'    => __( 'Time Taken', 'quiz-master-next' )
                        ) );

        $values = $quiz_infos = [];
        foreach ( $th_elements as $key => $th ) {
            $values[ $key ]['title'] = $th;
            $values[ $key ]['style'] = "";
        }

        $display_none = ' style=display:none; ';
        if ( $mlw_quiz_data ) {
            foreach ( $mlw_quiz_data as $mlw_quiz_info ) {
                $quiz_infos[] = $mlw_quiz_info;
                $mlw_complete_time     = '';
                $mlw_qmn_results_array = maybe_unserialize( $mlw_quiz_info->quiz_results );
                $hidden_questions      = isset( $mlw_qmn_results_array['hidden_questions'] ) ? count( $mlw_qmn_results_array['hidden_questions'] ) : 0;
                if ( is_array( $mlw_qmn_results_array ) ) {
                    $mlw_complete_hours = floor( $mlw_qmn_results_array[0] / 3600 );
                    if ( $mlw_complete_hours > 0 ) {
                        $mlw_complete_time .= "$mlw_complete_hours hours ";
                    }
                    $mlw_complete_minutes = floor( ( $mlw_qmn_results_array[0] % 3600 ) / 60 );
                    if ( $mlw_complete_minutes > 0 ) {
                        $mlw_complete_time .= "$mlw_complete_minutes minutes ";
                    }
                    $mlw_complete_seconds = $mlw_qmn_results_array[0] % 60;
                    $mlw_complete_time .= "$mlw_complete_seconds seconds";
                }

                $out_of_q = $mlw_quiz_info->total - $hidden_questions;
                $form_type = isset( $mlw_quiz_info->form_type ) ? $mlw_quiz_info->form_type : 0 ;

                if ( isset( $values['score'] ) ) {
                    if ( 1 === intval( $form_type ) || 2 === intval( $form_type ) ) {
                        $values['score']['content'][] = esc_html__( 'Not Graded', 'quiz-master-next' );
                    } else {
                        if ( 0 === intval( $mlw_quiz_info->quiz_system ) ) {
                            $values['score']['content'][] = sprintf( '%1$s %2$s %3$s %4$s %5$s', esc_html( $mlw_quiz_info->correct ), esc_html__( 'out of', 'quiz-master-next' ), esc_html( $out_of_q ), esc_html__( 'or', 'quiz-master-next' ), esc_html( $mlw_quiz_info->correct_score ) );
                        } elseif ( 1 === intval( $mlw_quiz_info->quiz_system ) ) {
                            $values['score']['content'][] = sprintf( '%1$s %2$s', esc_html( $mlw_quiz_info->point_score ), esc_html__( 'Points', 'quiz-master-next' ) );
                        } elseif ( 3 === intval( $mlw_quiz_info->quiz_system ) ) {
                            $values['score']['content'][] = sprintf( '%1$s %2$s %3$s %4$s %5$s <br /> %6$s %7$s', esc_html( $mlw_quiz_info->correct ), esc_html__( 'out of', 'quiz-master-next' ), esc_html( $out_of_q ), esc_html__( 'or', 'quiz-master-next' ), esc_html( $mlw_quiz_info->correct_score ), esc_html( $mlw_quiz_info->point_score ), esc_html__( 'Points', 'quiz-master-next' ) );
                        } else {
                            $values['score']['content'][] = esc_html__( 'Not Graded', 'quiz-master-next' );
                        }
                    }
                }

                if ( isset( $values['time_complete'] ) ) {
                    $values['time_complete']['content'][] = $mlw_complete_time;
                }
                

                if ( isset( $values['user'] ) ) {
                    if ( 0 === intval( $mlw_quiz_info->user ) ) {
                        $values['user']['content'][] = esc_html__( 'Visitor', 'quiz-master-next' );
                    } else {
                        $values['user']['content'][] = '<a href="' . esc_url( admin_url( 'user-edit.php?user_id=' . $mlw_quiz_info->user ) ) . '">' . esc_html( $mlw_quiz_info->user ) . '</a>';
                    }
                }

                $date = gmdate( get_option( 'date_format' ), strtotime( $mlw_quiz_info->time_taken ) );
                $time = gmdate( "h:i:s A", strtotime( $mlw_quiz_info->time_taken ) );

                if ( isset( $values['time_taken'] ) ) {
                    $values['time_taken']['content'][] = '<abbr title="' . esc_attr( $date . $time ) . '">' . esc_html( $date ) . '</abbr>';
                }

                
                
                
                foreach ( $values as $k => $v ) {
                    if ( ! in_array( $k, [ 'score', 'time_complete', 'time_taken' ], true ) ) {
                        $content = apply_filters( 'mlw_qmn_admin_results_page_column_content', '', $mlw_quiz_info, $k );
                        if ( isset( $values[ $k ] ) && ! empty( $content ) ) {
                            $values[ $k ]['content'][] = $content;
                        }
                    }
                }
            }
        } ?>

        <table class="widefat table myquize" aria-label="<?php esc_html_e( 'Results Table','quiz-master-next' ); ?>">
            <thead>
                <tr>
                    <th><?php esc_html_e( 'Quiz Name','quiz-master-next' ); ?></th>
                    <?php foreach ( $values as $k => $v ) {
                        if ( ! empty( $v['content'] ) ) {
                            echo '<th'. esc_html( $v['style'] ) . '>'. esc_html( $v['title'] ) . '</th>';
                        }
                    } ?>
                </tr>
            </thead>
            <tbody id="the-list">
                <?php
                $co = ! empty( $quiz_infos ) ? count( $quiz_infos ) : 0;
                if ( $co > 0 ) {
                    for ( $x = 0; $x < $co; $x++ ) { ?>
                        <tr>
                            
                            <td><span style="font-size:16px;"><?php echo esc_html( $quiz_infos[ $x ]->quiz_name ); ?></span></td>
                            <?php
                            foreach ( $values as $k => $v ) {
                                if ( isset( $v['content'][ $x ] ) ) {
                                    echo '<td'. esc_html( $v['style'] ) . '><span style="font-size:16px;">' . wp_kses_post( apply_filters( 'mlw_qmn_admin_results_page_result', $v['content'][ $x ], $quiz_infos[ $x ], $k ) ) . '</span></td>';
                                }
                            } ?>
                        </tr><?php
                    }
                } else { ?>
                    <tr>
                        <td colspan="12" style="text-align: center;"><?php esc_html_e( 'No record found.', 'quiz-master-next' ); ?></td>
                    </tr><?php
                } ?>
            </tbody>
        </table>

    </div>
    <?php
    $content = ob_get_clean();
    return $content;


}
add_shortcode("show_my_quiz_result",'getmyQuizResult');