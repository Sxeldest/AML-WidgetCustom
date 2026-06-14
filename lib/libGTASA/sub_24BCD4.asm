; =========================================================
; Game Engine Function: sub_24BCD4
; Address            : 0x24BCD4 - 0x24BDC2
; =========================================================

24BCD4:  PUSH            {R4-R7,LR}
24BCD6:  ADD             R7, SP, #0xC
24BCD8:  PUSH.W          {R11}
24BCDC:  MOV             R4, R0
24BCDE:  LDR             R0, =(dword_6D6290 - 0x24BCE6)
24BCE0:  MOV             R5, R1
24BCE2:  ADD             R0, PC; dword_6D6290
24BCE4:  LDR             R0, [R0]; key
24BCE6:  BLX             pthread_getspecific
24BCEA:  CMP             R0, R4
24BCEC:  BNE             loc_24BD1A
24BCEE:  LDR             R0, =(LogLevel_ptr - 0x24BCF4)
24BCF0:  ADD             R0, PC; LogLevel_ptr
24BCF2:  LDR             R0, [R0]; LogLevel
24BCF4:  LDR             R0, [R0]
24BCF6:  CMP             R0, #2
24BCF8:  BCC             loc_24BD08
24BCFA:  LDR             R0, =(aWw - 0x24BD06); "(WW)"
24BCFC:  ADR             R1, aReleasecontext; "ReleaseContext"
24BCFE:  ADR             R2, aPReleasedWhile; "%p released while current on thread\n"
24BD00:  MOV             R3, R4
24BD02:  ADD             R0, PC; "(WW)"
24BD04:  BLX             j_al_print
24BD08:  LDR             R0, =(dword_6D6290 - 0x24BD10)
24BD0A:  MOVS            R1, #0; pointer
24BD0C:  ADD             R0, PC; dword_6D6290
24BD0E:  LDR             R0, [R0]; key
24BD10:  BLX             pthread_setspecific
24BD14:  MOV             R0, R4
24BD16:  BLX             j_ALCcontext_DecRef
24BD1A:  LDR             R0, =(dword_6D6338 - 0x24BD20)
24BD1C:  ADD             R0, PC; dword_6D6338
24BD1E:  LDREX.W         R0, [R0]
24BD22:  CMP             R0, R4
24BD24:  BNE             loc_24BD42
24BD26:  LDR             R0, =(dword_6D6338 - 0x24BD34)
24BD28:  MOVS            R1, #0
24BD2A:  LDR             R2, =(dword_6D6338 - 0x24BD36)
24BD2C:  DMB.W           ISH
24BD30:  ADD             R0, PC; dword_6D6338
24BD32:  ADD             R2, PC; dword_6D6338
24BD34:  STREX.W         R3, R1, [R0]
24BD38:  CBZ             R3, loc_24BD4C
24BD3A:  LDREX.W         R3, [R2]
24BD3E:  CMP             R3, R4
24BD40:  BEQ             loc_24BD34
24BD42:  CLREX.W
24BD46:  DMB.W           ISH
24BD4A:  B               loc_24BD56
24BD4C:  MOV             R0, R4
24BD4E:  DMB.W           ISH
24BD52:  BLX             j_ALCcontext_DecRef
24BD56:  MOV             R6, #0x161AC
24BD5E:  LDR             R0, [R5,R6]
24BD60:  LDR             R1, [R0,#0x2C]
24BD62:  MOV             R0, R5
24BD64:  BLX             R1
24BD66:  MOVW            R1, #:lower16:(elf_hash_chain+0x6040)
24BD6A:  ADDS            R0, R5, R6
24BD6C:  MOVT            R1, #:upper16:(elf_hash_chain+0x6040)
24BD70:  LDR             R2, [R5,R1]
24BD72:  CBZ             R2, loc_24BDAC
24BD74:  ADD             R1, R5
24BD76:  LDR.W           R2, [R4,#0x90]
24BD7A:  LDREX.W         R3, [R1]
24BD7E:  CMP             R3, R4
24BD80:  BNE             loc_24BD94
24BD82:  DMB.W           ISH
24BD86:  STREX.W         R3, R2, [R1]
24BD8A:  CBZ             R3, loc_24BDA8
24BD8C:  LDREX.W         R3, [R1]
24BD90:  CMP             R3, R4
24BD92:  BEQ             loc_24BD86
24BD94:  CLREX.W
24BD98:  DMB.W           ISH
24BD9C:  LDR             R1, [R1]
24BD9E:  LDR.W           R2, [R1,#0x90]!
24BDA2:  CMP             R2, #0
24BDA4:  BNE             loc_24BD76
24BDA6:  B               loc_24BDAC
24BDA8:  DMB.W           ISH
24BDAC:  LDR             R0, [R0]
24BDAE:  LDR             R1, [R0,#0x30]
24BDB0:  MOV             R0, R5
24BDB2:  BLX             R1
24BDB4:  MOV             R0, R4
24BDB6:  POP.W           {R11}
24BDBA:  POP.W           {R4-R7,LR}
24BDBE:  B.W             ALCcontext_DecRef
