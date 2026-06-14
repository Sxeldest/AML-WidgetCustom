; =========================================================
; Game Engine Function: _ZN11CFileLoader14LoadPathHeaderEPKcRi
; Address            : 0x46A068 - 0x46A084
; =========================================================

46A068:  PUSH            {R7,LR}
46A06A:  MOV             R7, SP
46A06C:  SUB             SP, SP, #0x60
46A06E:  MOV             R2, R1
46A070:  LDR             R1, =(aSSFFSSDDDDDDDD+0x63 - 0x46A07A); "%d %d %s"
46A072:  ADD             R3, SP, #0x68+var_5C
46A074:  STR             R3, [SP,#0x68+var_68]
46A076:  ADD             R1, PC; "%d %d %s" ; format
46A078:  ADD             R3, SP, #0x68+var_60
46A07A:  BLX             sscanf
46A07E:  LDR             R0, [SP,#0x68+var_60]
46A080:  ADD             SP, SP, #0x60 ; '`'
46A082:  POP             {R7,PC}
