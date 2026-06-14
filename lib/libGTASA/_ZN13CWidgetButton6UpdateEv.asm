; =========================================================
; Game Engine Function: _ZN13CWidgetButton6UpdateEv
; Address            : 0x2B414C - 0x2B419A
; =========================================================

2B414C:  PUSH            {R4,R6,R7,LR}
2B414E:  ADD             R7, SP, #8
2B4150:  MOV             R4, R0
2B4152:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2B4156:  LDR             R0, [R4]
2B4158:  MOVS            R1, #0
2B415A:  LDR             R2, [R0,#0x50]
2B415C:  MOV             R0, R4
2B415E:  BLX             R2
2B4160:  CMP             R0, #1
2B4162:  BNE             loc_2B4180
2B4164:  LDRB.W          R0, [R4,#0x90]
2B4168:  MOV.W           R1, #0xFFFFFFFF
2B416C:  ANDS.W          R0, R0, #1
2B4170:  MOV.W           R0, #0xFFFFFFFF
2B4174:  ITT NE
2B4176:  MOVNE           R1, #0xFFFFFFCC
2B417A:  MOVNE           R0, #0xFFFFFF99
2B417E:  B               loc_2B4184
2B4180:  MOVS            R0, #0xFF
2B4182:  MOVS            R1, #0xFF
2B4184:  STRB.W          R1, [R4,#0x4A]
2B4188:  STRB.W          R0, [R4,#0x49]
2B418C:  STRB.W          R0, [R4,#0x4B]
2B4190:  MOV             R0, R4; this
2B4192:  POP.W           {R4,R6,R7,LR}
2B4196:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
