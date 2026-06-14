; =========================================================
; Game Engine Function: mpg123_errcode
; Address            : 0x2338A8 - 0x2338B6
; =========================================================

2338A8:  CMP             R0, #0
2338AA:  ITEE EQ
2338AC:  MOVEQ           R0, #(elf_hash_bucket+0xB376 - 0xB468)
2338AE:  MOVWNE          R1, #0xB468
2338B2:  LDRNE           R0, [R0,R1]
2338B4:  BX              LR
