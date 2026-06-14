; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager25GetNumOfSettingsForActionE18e_ControllerAction
; Address            : 0x3EA67C - 0x3EA6CA
; =========================================================

3EA67C:  PUSH            {R7,LR}
3EA67E:  MOV             R7, SP
3EA680:  ADD.W           R0, R0, R1,LSL#5
3EA684:  MOVW            R3, #0x3910
3EA688:  MOVW            R1, #0x3918
3EA68C:  MOVW            R2, #0x3920
3EA690:  LDR             R3, [R0,R3]
3EA692:  LDR.W           LR, [R0,R1]
3EA696:  LDR.W           R12, [R0,R2]
3EA69A:  MOVW            R2, #0x3928
3EA69E:  LDR             R2, [R0,R2]
3EA6A0:  MOVS            R1, #0
3EA6A2:  CMP.W           R3, #0x420
3EA6A6:  MOV.W           R0, #1
3EA6AA:  IT NE
3EA6AC:  MOVNE           R1, #1
3EA6AE:  IT NE
3EA6B0:  MOVNE           R0, #2
3EA6B2:  CMP.W           LR, #0x420
3EA6B6:  IT EQ
3EA6B8:  MOVEQ           R0, R1
3EA6BA:  CMP.W           R12, #0
3EA6BE:  IT NE
3EA6C0:  ADDNE           R0, #1
3EA6C2:  CMP             R2, #0
3EA6C4:  IT NE
3EA6C6:  ADDNE           R0, #1
3EA6C8:  POP             {R7,PC}
