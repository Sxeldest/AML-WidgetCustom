; =========================================================
; Game Engine Function: sub_FFF64
; Address            : 0xFFF64 - 0xFFF8C
; =========================================================

FFF64:  PUSH            {R4,R5,R7,LR}
FFF66:  ADD             R7, SP, #8
FFF68:  ADD.W           R0, R0, #0x198
FFF6C:  MOV             R5, R1
FFF6E:  MOVS            R1, #0x10
FFF70:  MOV             R4, R2
FFF72:  BL              sub_FFA98
FFF76:  LDR             R1, =0x1010125
FFF78:  STR             R1, [R0,#4]
FFF7A:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle20NameWithTemplateArgsE - 0xFFF82); `vtable for'`anonymous namespace'::itanium_demangle::NameWithTemplateArgs ...
FFF7C:  LDR             R2, [R5]
FFF7E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameWithTemplateArgs
FFF80:  ADDS            R1, #8
FFF82:  STR             R1, [R0]
FFF84:  LDR             R1, [R4]
FFF86:  STRD.W          R2, R1, [R0,#8]
FFF8A:  POP             {R4,R5,R7,PC}
