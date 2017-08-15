<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'bus.local');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', '127.0.0.1');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'WceToC]Z&BBG&.mDu!;j|@w@<2sd}FRO?QPSDg]lcdBj68|OdKxXQ,A&4v-k`b( ');
define('SECURE_AUTH_KEY',  'aq%JOI^y?l-N$$Ji!-vTVJW{oix):4o/M%95Fu=qj=.bjHhRf~Ca8r0FwV$0[e^Z');
define('LOGGED_IN_KEY',    '5$!E*VnTja,J~IML#(b4a$x(qkZo$GW52b!?;H=Zt;}OZ|hWU^i;.HK4]gL97W(L');
define('NONCE_KEY',        'pR~:O urTKV]k_0q|kN!?Y;18EJs]Gw7H^p+H&r&#Ns7G!d}V[|[T*:b6MS3Z)Ue');
define('AUTH_SALT',        '[z.)*lUPIE)o<~2nz=J;6HAOE=PP6Ey6E>2`akGMg4_|()+S2!Q|<f+`XQuGfG9j');
define('SECURE_AUTH_SALT', 'B`3w8se)%C?Ees_:^=yYoaTh@?JKYa7V@}kki_`Bp}`.do#IuW,qQZqDNJ<2$OYC');
define('LOGGED_IN_SALT',   'ynQxqPT2Z8F3Wss2x&&my,e$4+A;}@Su7^Mb|B{<%w>{.y*%.&(]0v0X1oie|iAH');
define('NONCE_SALT',       'f,#lOmQ<;~C^CDziv<6Ah{O_sv:Zj]%MULn[dXM||#v.8D)do|UW>c@w=j(c+aH%');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 * 
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
