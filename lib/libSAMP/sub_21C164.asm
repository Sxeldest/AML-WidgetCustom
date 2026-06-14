; =========================================================
; Game Engine Function: sub_21C164
; Address            : 0x21C164 - 0x21C192
; =========================================================

21C164:  PUSH            {R4,R5,R7,LR}
21C166:  ADD             R7, SP, #8
21C168:  ADD.W           R0, R0, #0x198
21C16C:  MOV             R4, R1
21C16E:  MOVS            R1, #0x10
21C170:  BL              sub_216EF0
21C174:  MOV             R5, R0
21C176:  MOV             R0, R4; s
21C178:  BLX             strlen
21C17C:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21C186); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21C17E:  ADD             R0, R4
21C180:  LDR             R1, =0x1010107
21C182:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21C184:  STRD.W          R4, R0, [R5,#8]
21C188:  MOV             R0, R5
21C18A:  ADDS            R2, #8
21C18C:  STRD.W          R2, R1, [R5]
21C190:  POP             {R4,R5,R7,PC}
