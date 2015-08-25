#! /usr/bin/env bash

case $1 in
    capture_note)
	emacsclient -c -F "((name . \"emacs-capture\") (height . 20) (width . 100))" --eval '(org-capture nil "n")'
	;;
    capture_link)
	emacsclient -c -F "((name . \"emacs-capture\") (height . 20) (width . 100))" --eval '(org-capture nil "l")'
	;;	
    *)
	;;
esac
