; =========================================================
; Game Engine Function: _ZN9CColAccel9setIplDefEi6IplDef
; Address            : 0x4665F8 - 0x466658
; =========================================================

4665F8:  PUSH            {R4-R7,LR}
4665FA:  ADD             R7, SP, #0xC
4665FC:  PUSH.W          {R8-R10}
466600:  LDR.W           R12, =(_ZN9CColAccel9m_iplDefsE_ptr - 0x466612)
466604:  MOVS            R4, #0x34 ; '4'
466606:  MUL.W           R5, R0, R4
46660A:  LDR.W           LR, [R7,#arg_4]
46660E:  ADD             R12, PC; _ZN9CColAccel9m_iplDefsE_ptr
466610:  LDR.W           R8, [R7,#arg_C]
466614:  LDR.W           R12, [R12]; CColAccel::m_iplDefs ...
466618:  LDR.W           R10, [R7,#arg_8]
46661C:  LDR.W           R6, [R12]; CColAccel::m_iplDefs
466620:  MLA.W           R0, R0, R4, R6
466624:  LDRD.W          R12, R9, [R7,#arg_10]
466628:  LDR             R4, [R7,#arg_0]
46662A:  STR             R1, [R6,R5]
46662C:  LDR             R1, [R7,#arg_1C]
46662E:  STRD.W          R2, R3, [R0,#4]
466632:  LDR             R2, [R7,#arg_18]
466634:  LDR             R3, [R7,#arg_20]
466636:  LDR             R6, [R7,#arg_24]
466638:  STR             R4, [R0,#0xC]
46663A:  STR.W           LR, [R0,#0x10]
46663E:  STR.W           R8, [R0,#0x18]
466642:  STR.W           R10, [R0,#0x14]
466646:  STRD.W          R12, R9, [R0,#0x1C]
46664A:  STRD.W          R2, R1, [R0,#0x24]
46664E:  STR             R3, [R0,#0x2C]
466650:  STRH            R6, [R0,#0x30]
466652:  POP.W           {R8-R10}
466656:  POP             {R4-R7,PC}
