; =========================================================
; Game Engine Function: _Z14AllowNagScreenv
; Address            : 0x296954 - 0x29696A
; =========================================================

296954:  PUSH            {R7,LR}
296956:  MOV             R7, SP
296958:  LDR             R0, =(aIsamazonbuild_1 - 0x296960); "IsAmazonBuild"
29695A:  LDR             R1, =(byte_61CD7E - 0x296962)
29695C:  ADD             R0, PC; "IsAmazonBuild"
29695E:  ADD             R1, PC; byte_61CD7E ; char *
296960:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
296964:  EOR.W           R0, R0, #1
296968:  POP             {R7,PC}
