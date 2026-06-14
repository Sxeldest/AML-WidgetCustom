; =========================================================
; Game Engine Function: _ZN15CTouchInterface9DeleteAllEv
; Address            : 0x2AFB94 - 0x2AFBCA
; =========================================================

2AFB94:  PUSH            {R4-R7,LR}
2AFB96:  ADD             R7, SP, #0xC
2AFB98:  PUSH.W          {R8}
2AFB9C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFBA8)
2AFB9E:  MOV.W           R8, #0
2AFBA2:  MOVS            R4, #0
2AFBA4:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFBA6:  LDR             R5, [R0]; CTouchInterface::m_pWidgets ...
2AFBA8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFBAE)
2AFBAA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFBAC:  LDR             R6, [R0]; CTouchInterface::m_pWidgets ...
2AFBAE:  LDR.W           R0, [R5,R4,LSL#2]
2AFBB2:  CBZ             R0, loc_2AFBBE
2AFBB4:  LDR             R1, [R0]
2AFBB6:  LDR             R1, [R1,#4]
2AFBB8:  BLX             R1
2AFBBA:  STR.W           R8, [R6,R4,LSL#2]
2AFBBE:  ADDS            R4, #1
2AFBC0:  CMP             R4, #0xBE
2AFBC2:  BNE             loc_2AFBAE
2AFBC4:  POP.W           {R8}
2AFBC8:  POP             {R4-R7,PC}
