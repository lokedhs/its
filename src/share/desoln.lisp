;;; -*- Mode: LISP; Package: Macsyma; -*- Saved by JPG
(SETQ SAVENO 3040.) 
(MDEFPROP $DESOLVE ((LAMBDA) ((MLIST) $EQNS $VARS) ((MPROG) ((MLIST) $TEQNS ((MSETQ) $INFLAG T) $PIECE ((MSETQ) $PARTSWITCH T) $TVARS $OVAR $LVAR ((MSETQ) $FLAG NIL) ((MSETQ) $PROGRAMMODE T)) (($MODEDECLARE) $FLAG $BOOLEAN) ((MCOND) ((MNOT) (($LISTP) $VARS)) ((MPROGN) ((MSETQ) $EQNS ((MLIST) $EQNS)) ((MSETQ) $VARS ((MLIST) $VARS)) ((MSETQ) $FLAG T)) T $FALSE) ((MCOND) ((MNOTEQUAL) (($LENGTH) ((MSETQ) $OVAR (($FIRST) $VARS))) 1.) (($ERROR) $OVAR |&contains more than one independent variable.|) T $FALSE) ((MSETQ) $OVAR (($FIRST) $OVAR)) ((MSETQ) $TEQNS (($MAP) ((LAMBDA) ((MLIST) $Z) (($LAPLACE) $Z $OVAR $LVAR)) $EQNS)) ((MSETQ) $TVARS (($MAP) ((LAMBDA) ((MLIST) $Z) ((%LAPLACE) $Z $OVAR $LVAR)) $VARS)) ((MSETQ) $TEQNS (($ERRCATCH) (($SOLVE) $TEQNS $TVARS))) ((MCOND) ((MOR) ((MEQUAL) $TEQNS ((MLIST))) ((MEQUAL) $TEQNS ((MLIST) ((MLIST))))) (($ERROR) |&DESOLVE can't handle this case.|) T ((MSETQ) $TEQNS (($FIRST) $TEQNS))) ((MCOND) ((MNOTEQUAL) $FLAG T) ((MSETQ) $TEQNS (($FIRST) $TEQNS)) T $FALSE) ((MSETQ) $TEQNS (($MAP) ((LAMBDA) ((MLIST) $Z) (($ILT) $Z $LVAR $OVAR)) $TEQNS)) ((MCOND) ((MAND) $FLAG ((MEQUAL) (($LENGTH) $TVARS) 1.)) (($FIRST) $TEQNS) T $TEQNS))) MEXPR)

