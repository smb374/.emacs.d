;;; dionysos-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dionysos-backend" "dionysos-backend.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from dionysos-backend.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-backend" '("dionysos-")))

;;;***

;;;### (autoloads nil "dionysos-backend-mpd" "dionysos-backend-mpd.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from dionysos-backend-mpd.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-backend-mpd" '("dionysos-" "with-mpd")))

;;;***

;;;### (autoloads nil "dionysos-backend-mplayer" "dionysos-backend-mplayer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from dionysos-backend-mplayer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-backend-mplayer" '("dionysos--mplayer-st")))

;;;***

;;;### (autoloads nil "dionysos-backend-vlc" "dionysos-backend-vlc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from dionysos-backend-vlc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-backend-vlc" '("dionysos--vlc-")))

;;;***

;;;### (autoloads nil "dionysos-fs-mode" "dionysos-fs-mode.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from dionysos-fs-mode.el

(autoload 'dionysos-fs-list "dionysos-fs-mode" "\
Show music files in `DIRECTORY'.

\(fn DIRECTORY)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-fs-mode" '("dionysos-")))

;;;***

;;;### (autoloads nil "dionysos-io" "dionysos-io.el" (0 0 0 0))
;;; Generated autoloads from dionysos-io.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-io" '("dionysos--")))

;;;***

;;;### (autoloads nil "dionysos-mode" "dionysos-mode.el" (0 0 0 0))
;;; Generated autoloads from dionysos-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-mode" '("dionysos-")))

;;;***

;;;### (autoloads nil "dionysos-mpd-mode" "dionysos-mpd-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from dionysos-mpd-mode.el

(autoload 'dionysos-mpd-playlist "dionysos-mpd-mode" "\
Show music files from MPD playlist.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-mpd-mode" '("dionysos-")))

;;;***

;;;### (autoloads nil "dionysos-notify" "dionysos-notify.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from dionysos-notify.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-notify" '("dionysos-")))

;;;***

;;;### (autoloads nil "dionysos-process" "dionysos-process.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from dionysos-process.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-process" '("dionysos--")))

;;;***

;;;### (autoloads nil "dionysos-ui" "dionysos-ui.el" (0 0 0 0))
;;; Generated autoloads from dionysos-ui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-ui" '("colorize-term")))

;;;***

;;;### (autoloads nil "dionysos-version" "dionysos-version.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from dionysos-version.el

(autoload 'dionysos-version "dionysos-version" "\
Get the dionysos version as string.
If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.
The returned string includes both, the version from package.el
and the library version, if both a present and different.
If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

\(fn &optional SHOW-VERSION)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-version" '("dionysos--library-version")))

;;;***

;;;### (autoloads nil "dionysos-volume" "dionysos-volume.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from dionysos-volume.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dionysos-volume" '("dionysos-")))

;;;***

;;;### (autoloads nil nil ("dionysos-custom.el" "dionysos-pkg.el"
;;;;;;  "dionysos.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dionysos-autoloads.el ends here
