; =========================================================
; Game Engine Function: _ZN9CColModel17MakeMultipleAllocEv
; Address            : 0x2E17D4 - 0x2E185E
; =========================================================

2E17D4:  PUSH            {R4,R5,R7,LR}
2E17D6:  ADD             R7, SP, #8
2E17D8:  MOV             R4, R0
2E17DA:  LDRB.W          R0, [R4,#0x29]
2E17DE:  LSLS            R0, R0, #0x1E
2E17E0:  IT PL
2E17E2:  POPPL           {R4,R5,R7,PC}
2E17E4:  MOVS            R0, #0x34 ; '4'; unsigned int
2E17E6:  BLX             _Znwj; operator new(uint)
2E17EA:  VMOV.I32        Q8, #0
2E17EE:  MOV             R5, R0
2E17F0:  ADD.W           R0, R5, #0x20 ; ' '
2E17F4:  VST1.32         {D16-D17}, [R0]
2E17F8:  MOV             R0, R5
2E17FA:  VST1.32         {D16-D17}, [R0]!
2E17FE:  VST1.32         {D16-D17}, [R0]
2E1802:  MOV             R0, R5; this
2E1804:  LDR             R1, [R4,#0x2C]; CCollisionData *
2E1806:  BLX             j__ZN14CCollisionData4CopyERKS_; CCollisionData::Copy(CCollisionData const&)
2E180A:  LDRB.W          R0, [R4,#0x29]
2E180E:  LSLS            R0, R0, #0x1D
2E1810:  BPL             loc_2E1848
2E1812:  LDR             R1, [R4,#0x2C]
2E1814:  LDR             R0, [R1,#0x14]; p
2E1816:  CBZ             R0, loc_2E181E
2E1818:  BLX             free
2E181C:  LDR             R1, [R4,#0x2C]
2E181E:  LDR             R0, [R1,#0x18]; p
2E1820:  CBZ             R0, loc_2E1828
2E1822:  BLX             free
2E1826:  LDR             R1, [R4,#0x2C]
2E1828:  LDR             R0, [R1,#0x28]; p
2E182A:  CBZ             R0, loc_2E1832
2E182C:  BLX             free
2E1830:  LDR             R1, [R4,#0x2C]
2E1832:  LDR             R0, [R1,#0x2C]; p
2E1834:  CMP             R0, #0
2E1836:  IT NE
2E1838:  BLXNE           free
2E183C:  LDRB.W          R0, [R4,#0x29]
2E1840:  AND.W           R0, R0, #0xFB
2E1844:  STRB.W          R0, [R4,#0x29]
2E1848:  LDR             R0, [R4,#0x2C]; this
2E184A:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E184E:  LDRB.W          R0, [R4,#0x29]
2E1852:  STR             R5, [R4,#0x2C]
2E1854:  AND.W           R0, R0, #0xF9
2E1858:  STRB.W          R0, [R4,#0x29]
2E185C:  POP             {R4,R5,R7,PC}
