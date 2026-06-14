; =========================================================
; Game Engine Function: sub_F9748
; Address            : 0xF9748 - 0xF9776
; =========================================================

F9748:  PUSH            {R7,LR}
F974A:  MOV             R7, SP
F974C:  SUB             SP, SP, #8
F974E:  MOV             R0, R1
F9750:  STR             R1, [SP,#0x10+var_C]
F9752:  BL              sub_F9E90
F9756:  CBZ             R0, loc_F9762
F9758:  LDRB            R0, [R0,#0x10]
F975A:  CMP             R0, #0
F975C:  IT NE
F975E:  MOVNE           R0, #1
F9760:  B               loc_F9772
F9762:  LDR             R1, =(aAnimationBlock - 0xF976E); "Animation block \"{}\" is missed on mob"... ...
F9764:  ADD             R3, SP, #0x10+var_C
F9766:  MOVS            R0, #2
F9768:  MOVS            R2, #0x30 ; '0'
F976A:  ADD             R1, PC; "Animation block \"{}\" is missed on mob"...
F976C:  BL              sub_DC970
F9770:  MOVS            R0, #0
F9772:  ADD             SP, SP, #8
F9774:  POP             {R7,PC}
