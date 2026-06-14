; =========================================================
; Game Engine Function: mpg123_set_filesize
; Address            : 0x231D9A - 0x231DAC
; =========================================================

231D9A:  CMP             R0, #0
231D9C:  ITEEE EQ
231D9E:  MOVEQ.W         R0, #(elf_hash_bucket+0xB1E7 - 0xB2E4)
231DA2:  MOVWNE          R2, #0xB2E4
231DA6:  STRNE           R1, [R0,R2]
231DA8:  MOVNE           R0, #0
231DAA:  BX              LR
