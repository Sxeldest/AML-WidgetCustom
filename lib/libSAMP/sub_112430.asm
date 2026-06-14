; =========================================================
; Game Engine Function: sub_112430
; Address            : 0x112430 - 0x11244E
; =========================================================

112430:  PUSH            {R4,R6,R7,LR}
112432:  ADD             R7, SP, #8
112434:  MOV             R4, R0
112436:  LDR             R0, =(_ZTVN15descent_builder9builder_tI18custom_speedometerEE - 0x11243E); `vtable for'descent_builder::builder_t<custom_speedometer> ...
112438:  MOVS            R2, #0
11243A:  ADD             R0, PC; `vtable for'descent_builder::builder_t<custom_speedometer>
11243C:  ADDS            R0, #8
11243E:  STRD.W          R0, R2, [R4]
112442:  MOV             R0, R1
112444:  MOV             R1, R4
112446:  BL              sub_ECD64
11244A:  MOV             R0, R4
11244C:  POP             {R4,R6,R7,PC}
