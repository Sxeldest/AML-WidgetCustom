; =========================================================
; Game Engine Function: _ZN11CPopulation21FindDummyDistForModelEi
; Address            : 0x4CDE58 - 0x4CDE82
; =========================================================

4CDE58:  LDR             R1, =(MI_SAMSITE_ptr - 0x4CDE5E)
4CDE5A:  ADD             R1, PC; MI_SAMSITE_ptr
4CDE5C:  LDR             R1, [R1]; MI_SAMSITE
4CDE5E:  LDRH            R1, [R1]
4CDE60:  CMP             R1, R0
4CDE62:  ITTT EQ
4CDE64:  MOVWEQ          R0, #0x8000
4CDE68:  MOVTEQ          R0, #0x443B
4CDE6C:  BXEQ            LR
4CDE6E:  LDR             R1, =(MI_SAMSITE2_ptr - 0x4CDE76)
4CDE70:  ADR             R2, dword_4CDE8C
4CDE72:  ADD             R1, PC; MI_SAMSITE2_ptr
4CDE74:  LDR             R1, [R1]; MI_SAMSITE2
4CDE76:  LDRH            R1, [R1]
4CDE78:  CMP             R1, R0
4CDE7A:  IT EQ
4CDE7C:  ADDEQ           R2, #4
4CDE7E:  LDR             R0, [R2]
4CDE80:  BX              LR
