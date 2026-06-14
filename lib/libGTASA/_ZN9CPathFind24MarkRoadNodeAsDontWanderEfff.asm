; =========================================================
; Game Engine Function: _ZN9CPathFind24MarkRoadNodeAsDontWanderEfff
; Address            : 0x318910 - 0x318966
; =========================================================

318910:  PUSH            {R4,R6,R7,LR}
318912:  ADD             R7, SP, #8
318914:  SUB             SP, SP, #0x20
318916:  MOVW            R12, #0x23FE
31891A:  MOV             R4, R0
31891C:  MOVS            R0, #0
31891E:  MOVT            R12, #0x4974
318922:  STRD.W          R0, R12, [SP,#0x28+var_28]
318926:  STRD.W          R0, R0, [SP,#0x28+var_20]
31892A:  STRD.W          R0, R0, [SP,#0x28+var_18]
31892E:  STR             R0, [SP,#0x28+var_10]
318930:  MOV             R0, R4
318932:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
318936:  UXTH            R1, R0
318938:  MOVW            R2, #0xFFFF
31893C:  CMP             R1, R2
31893E:  BEQ             loc_318962
318940:  ADD.W           R1, R4, R1,LSL#2
318944:  LSRS            R2, R0, #0x10
318946:  LSLS            R2, R2, #3
318948:  SUB.W           R0, R2, R0,LSR#16
31894C:  LDR.W           R1, [R1,#0x804]
318950:  ADD.W           R0, R1, R0,LSL#2
318954:  LDRH.W          R1, [R0,#0x18]!
318958:  LDRB            R2, [R0,#2]
31895A:  ORR.W           R1, R1, #0x400
31895E:  STRH            R1, [R0]
318960:  STRB            R2, [R0,#2]
318962:  ADD             SP, SP, #0x20 ; ' '
318964:  POP             {R4,R6,R7,PC}
