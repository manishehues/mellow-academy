<?php
/**
 * Header template.
 *
 * @package Avada
 * @subpackage Templates
 */

// Do not allow directly accessing this file.
if ( ! defined( 'ABSPATH' ) ) {
	exit( 'Direct script access denied.' );
}
?>
<!DOCTYPE html>
<html class="<?php avada_the_html_class(); ?>" <?php language_attributes(); ?>>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<?php Avada()->head->the_viewport(); ?>

	<?php wp_head(); ?>

	<?php
	/**
	 * The setting below is not sanitized.
	 * In order to be able to take advantage of this,
	 * a user would have to gain access to the database
	 * in which case this is the least of your worries.
	 */
	echo apply_filters( 'avada_space_head', Avada()->settings->get( 'space_head' ) ); // phpcs:ignore WordPress.Security.EscapeOutput
	?>
	
</head>

<?php
$object_id      = get_queried_object_id();
$c_page_id      = Avada()->fusion_library->get_page_id();
$wrapper_class  = 'fusion-wrapper';
$wrapper_class .= ( is_page_template( 'blank.php' ) ) ? ' wrapper_blank' : '';
?>
<body <?php body_class(); ?> <?php fusion_element_attributes( 'body' ); ?>>
	<?php do_action( 'avada_before_body_content' ); ?>
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'Avada' ); ?></a>

	<div id="siteHeader" class="fusion-header-wrapper desktop shortContainer siteHeader">
		<div class="fusion-row">
			<div class="leftSide mainMenu">
				<?php avada_main_menu(); ?>
			</div>
			<div class="centerArea logoArea">
				<?php avada_logo(); ?>
			</div>
			<div class="rightSide socialApplyNow">
				<div class="socialLinks">
					<?php echo avada_header_social_links(); ?>					
				</div>				
				<div class="applyNowBtn">
					<?php echo avada_contact_info(); ?>
				</div>
			</div>
		</div>
	</div>
	<div id="siteHeader" style="display:none;" class="fusion-header-wrapper mobile shortContainer siteHeader">
		<div id="mobileMenu" class="mobileMenu">
			<!-- <div class="overlay"></div> -->
			<?php avada_main_menu(); ?>
			<div class="socialLinks">
				<?php echo avada_header_social_links(); ?>					
			</div>
		</div>
		<div class="fusion-row">
			<div class="leftSide mainMenu">
				<div id="bars" class="bars">
					<div class="bar one"></div>
					<div class="bar two"></div>
					<div class="bar three"></div>
					<div class="bar four"></div>
				</div>
				<div class="siteLogo">
					<?php avada_logo(); ?>
				</div>
			</div>			
			<div class="rightSide socialApplyNow">
				<div class="socialLinks">
					<?php echo avada_header_social_links(); ?>					
				</div>				
				<div class="applyNowBtn">
					<?php echo avada_contact_info(); ?>
				</div>
			</div>
		</div>
	</div>

	<div id="boxed-wrapper">
		<div class="fusion-sides-frame"></div>
		<div id="wrapper" class="<?php echo esc_attr( $wrapper_class ); ?>">
			
			

			

			<?php
			$row_css    = '';
			$main_class = '';

			if ( apply_filters( 'fusion_is_hundred_percent_template', false, $c_page_id ) ) {
				$row_css    = 'max-width:100%;';
				$main_class = 'width-100';
			}

			if ( fusion_get_option( 'content_bg_full' ) && 'no' !== fusion_get_option( 'content_bg_full' ) ) {
				$main_class .= ' full-bg';
			}
			do_action( 'avada_before_main_container' );
			?>
			<main id="main" class="clearfix <?php echo esc_attr( $main_class ); ?>">
				<div class="fusion-row" style="<?php echo esc_attr( $row_css ); ?>">
