��    �      �  �   �
      �  �   �  �   2  %   �  =     .   ?  %   n  �   �  �   ~  a   *  G   �  J   �  I     %  i  �   �  �   +  A   �  ;   $  <   `  5   �  ;   �  G     <   W  0   �  =   �  ;     <   ?  ;   |  <   �     �     �  �     �   �  7   8  7   p  /   �  ,   �  -        3     D  
   P     [     k     �     �     �     �     �          /      3     T     \     d     k     ~     �     �     �     �     �     �     �  &        2     :     C     J     S     h     o     �  #   �     �     �  %   �     �               8      Q  @   r  �   �     m     �     �     �     �  �   �     H      U      l      }      �      �   	   �   .   �      �      �      	!     !!  	   >!     H!     W!     f!  P   l!  Q   �!     "     "  6   "     L"  $   h"     �"     �"     �"     �"     �"     �"  Q   	#     [#     c#  %   �#  -   �#     �#     �#     �#      $  "   $     1$     I$     Q$     Y$  	   f$     p$  
   ~$     �$     �$     �$     �$  !   �$     �$     %     %     7%     I%  4   Z%     �%     �%  $   �%     �%     �%     �%     &     &     !&     ;&     X&     r&     �&     �&     �&     �&     �&     �&  %   '     ,'     3'     <'      L'     m'  �   �'     2(  *   J(  �  u(  �   *  �   �*  .   �+  L   �+  5   =,  0   s,    �,    �-  e   �.  l   &/  }   �/  a   0  %  s0  �   �1  �   P2  W   /3  D   �3  ^   �3  <   +4  G   h4  e   �4  X   5  4   o5  R   �5  >   �5  X   66  A   �6  :   �6     7  3   7  �   G7  �   ,8  A   %9  J   g9  E   �9  -   �9  ?   &:  %   f:     �:     �:  #   �:  /   �:  ,   ;  "   B;  &   e;  4   �;  *   �;  1   �;     <  6   &<     ]<     p<     �<     �<     �<     �<     �<  *   �<     =     )=     1=  0   Q=  9   �=     �=     �=     �=     �=  "    >  
   #>     .>     G>  1   [>     �>     �>  5   �>     �>  "   	?  (   ,?     U?  &   p?  R   �?  �   �?     �@  "   �@     A     A  
   %A  �   0A     +B     :B     ZB     pB     vB  %   ~B  %   �B  =   �B     C  $   (C     MC  #   iC     �C     �C     �C     �C  o   �C  ~   BD     �D     �D  A   �D  5   E  6   IE     �E     �E  $   �E  $   �E  "   �E  #   F  v   +F     �F  C   �F  @   �F  7   6G     nG     |G     �G     �G     �G  $   �G     �G     H     H     /H     AH     SH     eH      tH     �H  .   �H  4   �H     I     /I  %   ?I     eI     }I  E   �I     �I  ,   �I  5   J     IJ  $   UJ  #   zJ     �J     �J  6   �J  ;   �J  ,    K  2   MK  '   �K  1   �K     �K     �K     	L  #   L  ;   ;L     wL     �L     �L  8   �L     �L  �   M      �M  )   �M            E   �   �   �       �   Q   $          A       B   R          �   #   i   '   �           �          s      I      �       n   v   `          �       ~   �       	   M   �   q   �   �   �   �      @                 �   r   =   a   �   o   1   �   0       f   d   ^       z   �          (   
   ,       �       {              U   9   �   h       ]   &           .   �   �   [   S   C   �   ;   K   4   w       D   �   �   V       �       8      y   �   �       6       �   �   c   u   |   _          t   �   W   Z       X       T          !   x   p       �   N   b   �          2       5              �   �   �                 �   /   \   Y   �       }   O       J   l      )   ?           +       �         >   3   �   7   %   m   <           �           j                 �   e       �   H   g           F   k   P              G       �      :   -   �   *      "              L               ->  It will ban particular users by just putting their ids seprated by commas(,). If user is Ban then they will not able to access wp file manager on front end. -> * for all operations and to allow some operation you can mention operation name as like, allowed_operations="upload,download". Note: seprated by comma(,). Default: * -> File Manager Theme. Default: Light -> File Modified or Create date format. Default: d M, Y h:i A -> File manager Language. Default: English(en) -> Filemanager UI View. Default: grid -> Here "test" is the name of folder which is located on root directory, or you can give path for sub folders as like "wp-content/plugins". If leave blank or empty it will access all folders on root directory. Default: Root directory -> It will allow all roles to access file manager on front end or You can simple use for particular user roles as like allowed_roles="editor,author" (seprated by comma(,)) -> It will lock mentioned in commas. you can lock more as like ".php,.css,.js" etc. Default: Null -> for access to read files permission, note: true/false, default: true -> for access to write files permissions, note: true/false, default: false -> it will hide mentioned here. Note: seprated by comma(,). Default: Null <code>[wp_file_manager view="list" lang="en" theme="light" dateformat="d M, Y h:i A" allowed_roles="editor,author" access_folder="wp-content/plugins" write = "true" read = "false" hide_files = "kumar,abc.php" lock_extensions=".php,.css" allowed_operations="upload,download" ban_user_ids="2,3"] <code>[wp_file_manager]</code> -> It will show file manager on front end. But only Administrator can access it and will control from file manager settings. <code>[wp_file_manager_admin]</code> -> It will show file manager on front end. You can control all settings from file manager settings. It will work same as backend WP File Manager. <span class="fm_console_error">Nothing selected for backup</span> <span class="fm_console_error">Others backup failed.</span> <span class="fm_console_error">Plugins backup failed.</span> <span class="fm_console_error">Security Issue.</span> <span class="fm_console_error">Themes backup failed.</span> <span class="fm_console_error">Unable to create database backup.</span> <span class="fm_console_error">Uploads backup failed.</span> <span class="fm_console_success">All Done</span> <span class="fm_console_success">Database backup done.</span> <span class="fm_console_success">Others backup done.</span> <span class="fm_console_success">Plugins backup done.</span> <span class="fm_console_success">Themes backup done.</span> <span class="fm_console_success">Uploads backup done.</span> Action Actions upon selected backup(s) Admin can restrict actions of any user. Also hide files and folders and can set different - different folders paths for different users. Admin can restrict actions of any userrole. Also hide files and folders and can set different - different folders paths for different users roles. After enable trash, your files will go to trash folder. After enabling this all files will go to media library. Are you sure want to remove selected backup(s)? Are you sure you want to delete this backup? Are you sure you want to restore this backup? Backup / Restore Backup Date Backup Now Backup Options: Backup data (click to download) Backup files will be under Backup is running, please wait Backup not found! Backup removed successfully! Backup successfully deleted. Backups removed successfully! Ban Browser and OS (HTTP_USER_AGENT) Buy PRO Buy Pro Cancel Change Theme Here: Code-editor View Confirm Copy files or folders Currently no backup(s) found. DELETE FILES Dark Database Backup Database backup done on date  Database backup restored successfully. Default Default: Delete Deselect Dismiss this notice. Donate Download Files Logs Download files Duplicate or clone a folder or file Edit Files Logs Edit a file Enable Files Upload to Media Library? Enable Trash? Existing Backup(s) Extract archive or zipped file File Manager - Shortcode File Manager - System Properties File Manager Root Path, you can change according to your choice. File Manager has a code editor with multiple themes. You can select any theme for code editor. It will display when you edit any file. Also you can allow fullscreen mode of code editor. File Operations List: File doesn't exist to download. Files Backup Gray Help Here admin can give access to user roles to use filemanager. Admin can set Default Access Folder and also control upload size of filemanager. Info of file Invalid Security Code. Last Log Message Light Logs Make directory or folder Make file Maximum file upload size (upload_max_filesize) Memory Limit (memory_limit) Missing backup id. Missing parameter type. Missing required parameters. No Thanks No log message No logs found! Note: Note: These are demo screenshots. Please buy File Manager pro to Logs functions. Note: This is just a demo screenshot. To get settings please buy our pro version. OK Ok Others (Any other directories found inside wp-content) Others backup done on date  Others backup restored successfully. PHP version Parameters: Paste a file or folder Please Enter Email Address. Please Enter First Name. Please Enter Last Name. Please change this carefully, wrong path can lead file manager plugin to go down. Plugins Plugins backup done on date  Plugins backup restored successfully. Post maximum file upload size (post_max_size) Preferences Privacy Policy Public Root Path RESTORE FILES Remove or delete files and folders Rename a file or folder Restore SUCCESS Save Changes Saving... Search things Select All Settings Settings - Code-editor Settings - General Settings - User Restrictions Settings - User Role Restrictions Settings saved. Shortcode - PRO Simple cut a file or folder System Properties Terms of Service The backup apparently succeeded and is now complete. Themes Themes backup done on date  Themes backup restored successfully. Time now Timeout (max_execution_time) To make a archive or zip Today USE: Unable to removed backup! Unable to restore DB backup. Unable to restore others. Unable to restore plugins. Unable to restore themes. Unable to restore uploads. Upload Files Logs Upload files Uploads Uploads backup done on date  Uploads backup restored successfully. Verify View Log WP File Manager WP File Manager - Backup/Restore WP File Manager Contribution We love making new friends! Subscribe below and we promise to
    keep you up-to-date with our latest new plugins, updates,
    awesome deals and a few special offers. Welcome to File Manager You have not made any changes to be saved. Project-Id-Version: WP File Manager
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2021-07-16 15:30+0530
Last-Translator: admin <kajal.gill@mysenseinc.in>
Language-Team: 
Language: hu_HU
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Poedit 2.4.3
X-Poedit-KeywordsList: __;_e
X-Poedit-Basepath: ..
X-Poedit-SearchPath-0: .
 -> Megtiltja az egyes felhasználókat azáltal, hogy csak vesszővel elválasztott azonosítót tesz ((). Ha a felhasználó Ban, akkor nem fog tudni hozzáférni a wp fájlkezelőhöz a kezelőfelületen. -> * az összes művelethez, és bizonyos műveletek engedélyezéséhez megemlítheti a művelet nevét, mint például, allowed_operations="upload,download". Megjegyzés: vesszővel elválasztva (,). Alapértelmezett: * -> Fájlkezelő téma. Alapértelmezett: Light -> File Modified vagy Create date formátum. Alapértelmezés: d M, Y h: i A -> Fájlkezelő nyelve. Alapértelmezett: English(en) -> Filemanager UI nézet. Alapértelmezett: grid -> Itt a "teszt" a mappa neve, amely a gyökérkönyvtárban található, vagy megadhatja az almappák elérési útját, például "wp-content / plugins". Ha üresen vagy üresen hagyja, akkor a gyökérkönyvtár összes mappájához hozzáfér. Alapértelmezés: Root directory -> Lehetővé teszi az összes szerepkör számára, hogy hozzáférjen a fájlkezelőhöz a kezelőfelületen, vagy egyszerűen használhatja bizonyos felhasználói szerepköröket, mint például allowed_roles="editor,author" (vesszővel elválasztva (,)) -> A vesszőkben megemlíti. többet is lezárhat, mint ".php, .css, .js" stb. Alapértelmezés: Null -> az olvasási fájlokhoz való hozzáférés engedélye, megjegyzés: true / false, alapértelmezett: true -> a fájlok írásához való hozzáféréshez való hozzáféréshez vegye figyelembe: true/ false, alapértelmezett: false -> elrejti az itt említetteket. Megjegyzés: vesszővel elválasztva (,). Alapértelmezés: Null <code>[wp_file_manager view="list" lang="en" theme="light" dateformat="d M, Y h:i A" allowed_roles="editor,author" access_folder="wp-content/plugins" write = "true" read = "false" hide_files = "kumar,abc.php" lock_extensions=".php,.css" allowed_operations="upload,download" ban_user_ids="2,3"] <code> [wp_file_manager] </code> -> Megjeleníti a fájlkezelőt a kezelőfelületen. De csak az adminisztrátor férhet hozzá, és a fájlkezelő beállításaiból fog vezérelni. <code> [wp_file_manager_admin] </code> -> Megjeleníti a fájlkezelőt a kezelőfelületen. Az összes beállítást a fájlkezelő beállításaiból vezérelheti. Ugyanúgy fog működni, mint a háttér-WP fájlkezelő. <span class="fm_console_error">Semmi sem lett kiválasztva biztonsági mentésre</span> <span class="fm_console_error">Mások mentése nem sikerült.</span> <span class="fm_console_error">A beépülő modulok biztonsági mentése nem sikerült.</span> <span class="fm_console_error">Biztonsági probléma.</span> <span class="fm_console_error">A témák mentése nem sikerült.</span> <span class="fm_console_error">Nem sikerült létrehozni az adatbázis biztonsági mentését.</span> <span class="fm_console_error">Nem sikerült feltölteni a biztonsági mentést. </span> <span class="fm_console_success">Minden kész</span> <span class="fm_console_success">Az adatbázis biztonsági mentése kész. </span> <span class="fm_console_success">Mások mentése kész.</span> <span class="fm_console_success">A beépülő modulok biztonsági mentése kész.</span> <span class="fm_console_success">A témák mentése kész.</span> <span class="fm_console_success">Feltöltés kész.</span> Akció Műveletek a kiválasztott biztonsági mentésekkel Az adminisztrátor korlátozhatja bármely felhasználó műveleteit. A fájlokat és mappákat is elrejtheti, és különböző - különböző mappák elérési útjait állíthatja be a különböző felhasználók számára. Az adminisztrátor korlátozhatja bármely felhasználói szerepkör műveleteit. A fájlokat és mappákat is elrejtheti, és különböző - különböző mappák elérési útjait állíthatja be a különböző felhasználói szerepkörökhöz. A kuka engedélyezése után a fájlok a kuka mappába kerülnek. Ennek engedélyezése után az összes fájl a média könyvtárba kerül. Biztosan el akarja távolítani a kijelölt biztonsági másolatokat? Biztosan törli ezt a biztonsági másolatot? Biztosan vissza akarja állítani ezt a biztonsági másolatot? Biztonsági mentés visszaállítása Biztonsági mentés dátuma Biztonsági mentés most Biztonsági mentési lehetőségek: Biztonsági adatok (kattintson a letöltéshez) A biztonsági mentési fájlok alatt lesznek A biztonsági mentés fut, várjon A biztonsági mentés nem található! A biztonsági másolat eltávolítása sikeres volt! A biztonsági mentés sikeresen törölve. A biztonsági másolatok sikeresen eltávolítva! Tilalom Böngésző és operációs rendszer (HTTP_USER_AGENT) Vásároljon PRO-t Vásároljon PRO-t Megszünteti Téma módosítása itt: Kódszerkesztő nézet megerősít Fájlok vagy mappák másolása Jelenleg nincsenek biztonsági másolatok. FÁJLOK TÖRLÉSE Sötét Adatbázis biztonsági mentése Az adatbázis mentése a dátummal megtörtént  Az adatbázis biztonsági mentése sikeresen visszaállt. Alapértelmezett Alapértelmezett: Töröl Törölje a kijelölést Utasítsa el ezt az értesítést. Adományoz Fájlnaplók letöltése Fájlok letöltése Másoljon vagy klónozzon egy mappát vagy fájlt Fájlnaplók szerkesztése Fájl szerkesztése Engedélyezi a fájlok feltöltését a médiatárba? Engedélyezi a kukát? Meglévő biztonsági mentés (ek) Kivonat archív vagy tömörített fájl Fájlkezelő - rövid kód Fájlkezelő - Rendszer tulajdonságai A File Manager gyökérútvonalát megváltoztathatja az Ön választása szerint. A File Manager rendelkezik több témájú kódszerkesztővel. Bármely témát kiválaszthat a kódszerkesztő számára. Bármely fájl szerkesztésekor megjelenik. Engedélyezheti a kódszerkesztő teljes képernyős módját is. Fájlműveletek listája: A fájl nem létezik letöltésre. Fájlmentés szürke Segítség Itt az adminisztrátor hozzáférést adhat a felhasználói szerepkörökhöz a fájlkezelő használatához. Az adminisztrátor beállíthatja az alapértelmezett hozzáférési mappát, és szabályozhatja a fájlkezelő feltöltési méretét is. A fájl adatai Érvénytelen biztonsági kód. Utolsó naplóüzenet Fény Naplók Készítsen könyvtárat vagy mappát Készítsen könyvtárat vagy mappát A fájl maximális feltöltési mérete (upload_max_filesize) Memória korlát (memory_limit) Hiányzik a biztonsági azonosító. Hiányzó paramétertípus. Hiányzik a szükséges paraméter. Nem köszönöm Nincs naplóüzenet Nem található napló! Jegyzet: Megjegyzés: Ezek bemutató képernyőképek. Kérjük, vásárolja meg a File Manager pro to Logs funkciókat. Megjegyzés: Ez csak egy bemutató képernyőkép. A beállítások megszerzéséhez kérjük, vásárolja meg a pro verziót. rendben Rendben Egyéb (bármely más könyvtár megtalálható a wp-tartalomban) Mások biztonsági mentése a dátummal megtörtént  Mások biztonsági mentése sikeresen visszaállítva. PHP verzió Paraméterek: Illesszen be egy fájlt vagy mappát Kérjük, adja meg az e-mail címet. Kérjük, adja meg a keresztnevet. Kérjük, adja meg a vezetéknevet. Kérjük, változtassa meg ezt gondosan, a rossz elérési út a fájlkezelő beépülő modul lefutásához vezethet. Bővítmények A beépülő modulok biztonsági mentése a dátummal megtörtént  A beépülő modulok biztonsági mentése sikeresen visszaállt. A fájl maximális feltöltési mérete (post_max_size) preferenciák Adatvédelmi irányelvek Nyilvános gyökérút FÁJLOK VISSZAÁLLÍTÁSA Fájl szerkesztése Nevezzen át egy fájlt vagy mappát visszaállítás SIKER Változtatások mentése Megtakarítás... Keressen dolgokat Mindet kiválaszt Beállítások Beállítások - Kódszerkesztő Beállítások - Általános Beállítások - Felhasználói korlátozások Beállítások - Felhasználói szerepkorlátozások Beállítások elmentve. Shortcode - PRO Egyszerű fájl vagy mappa kivágása Rendszer tulajdonságai Szolgáltatás feltételei A biztonsági mentés láthatóan sikerült, és most befejeződött. Témák A témák mentése a dátummal megtörtént  A témák biztonsági mentése sikeresen visszaállt. Itt az idő Időtúllépés (max_execution_time) Archívum vagy zip készítéséhez Ma HASZNÁLAT: Nem sikerült eltávolítani a biztonsági másolatot! Nem sikerült visszaállítani a DB biztonsági másolatot. Nem sikerült visszaállítani a többieket. Nem sikerült visszaállítani a bővítményeket. Nem lehet visszaállítani a témákat. Nem sikerült visszaállítani a feltöltéseket. Fájlnaplók feltöltése Fájlok feltöltése Feltöltések A feltöltés dátuma megtörtént  A feltöltések biztonsági mentése sikeresen visszaállt. Ellenőrizze Napló megtekintése WP File Manager WP fájlkezelő - Biztonsági mentés / Visszaállítás WP File Manager hozzájárulás Szeretünk új barátokat szerezni! Iratkozzon fel alább, és megígérjük
    naprakész legyen a legújabb új beépülő moduljainkkal,
    fantasztikus ajánlatok és néhány különleges ajánlat. Üdvözöljük a Fájlkezelőben Nem végzett változtatásokat mentésre. 