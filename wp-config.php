<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'woazuymy_academy');

/** MySQL database username */
define('DB_USER', 'woazuymy_academy');

/** MySQL database password */
define('DB_PASSWORD', 'Shinda@11');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'qWg1xIp)W#ODRhFWq(Vu*nl@MCY6OMQOM5UGN20cpPK^r&@eHSC6vqyzqMJiZ6)6');
define('SECURE_AUTH_KEY',  'BJj3jsp7egx7pCOmJ5rvcXNeoa*&JY8hzL6qHsBvAyJOh&5!Rl3Qs7ky^Mf9T(u)');
define('LOGGED_IN_KEY',    'yiSFIkBCPwBTVE%a1@mKb3a@RPH*XUmt*qCDZz8*cQxGYuUyb)uJJZ8aT1XJMQzS');
define('NONCE_KEY',        '^wRrf39&#gc1ESAwvhhi7A^ZN7y*cf56vie2*DT9(q5vFk(y0qy4*L@S&69vJWt4');
define('AUTH_SALT',        '2KL2uf0lE*%orBD28@J^5)NGAs&s)dfR5^ArrrQNU!!UfA5)Cn1v@Ve3Xe9LIPpN');
define('SECURE_AUTH_SALT', 'Wd&YYLJDP^sl)h19OCEmUaLiU9YhnNGhC*C%9DrK74erfxJla3369cPy0(83A#q1');
define('LOGGED_IN_SALT',   'yMh5(3YQptR)BqJCL02Ofhz!GqBPp9*AHCKFvPf%vdOG)XgUUrS()M)1%GzHGrP7');
define('NONCE_SALT',       ')xBK486G7^jS4)^9)NotTjE9wQCDwQL6vEZMXkneEg6vOaMi&s^OyBVKTzAsjsL^');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'E9RUK_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
define('ALLOW_UNFILTERED_UPLOADS', true);  


define( 'DISABLE_WP_CRON', true );
define( 'DISALLOW_FILE_EDIT', true );
define( 'CONCATENATE_SCRIPTS', false );
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

define( 'WP_ALLOW_MULTISITE', true );

define ('FS_METHOD', 'direct');
