; =========================================================
; Game Engine Function: _ZN8CGarages16ChangeGarageTypeEshj
; Address            : 0x3118EC - 0x31194A
; =========================================================

3118EC:  LDR             R3, =(_ZN8CGarages8aGaragesE_ptr - 0x3118F4)
3118EE:  MOVS            R2, #0xD8
3118F0:  ADD             R3, PC; _ZN8CGarages8aGaragesE_ptr
3118F2:  LDR             R3, [R3]; CGarages::aGarages ...
3118F4:  SMLABB.W        R3, R0, R2, R3
3118F8:  STRB.W          R1, [R3,#0x4C]
3118FC:  SUBS            R3, R1, #2
3118FE:  CMP             R3, #4
311900:  BCS             loc_31192E
311902:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x311908)
311904:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
311906:  LDR             R1, [R1]; CGarages::aGarages ...
311908:  SMLABB.W        R1, R0, R2, R1
31190C:  LDRB.W          R2, [R1,#0x4D]!
311910:  CMP             R2, #0
311912:  IT NE
311914:  BXNE            LR
311916:  LDR             R2, =(_ZN8CGarages8aGaragesE_ptr - 0x31191E)
311918:  MOVS            R3, #0xD8
31191A:  ADD             R2, PC; _ZN8CGarages8aGaragesE_ptr
31191C:  LDR             R2, [R2]; CGarages::aGarages ...
31191E:  SMLABB.W        R0, R0, R3, R2
311922:  MOVS            R2, #1
311924:  STRB            R2, [R1]
311926:  MOV.W           R1, #0x3F800000
31192A:  STR             R1, [R0,#0x38]
31192C:  BX              LR
31192E:  CMP             R1, #0x2B ; '+'
311930:  BNE             loc_311934
311932:  BX              LR
311934:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x31193C)
311936:  MOVS            R2, #0xD8
311938:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
31193A:  LDR             R1, [R1]; CGarages::aGarages ...
31193C:  SMLABB.W        R0, R0, R2, R1
311940:  MOVS            R1, #0
311942:  STR             R1, [R0,#0x38]
311944:  STRB.W          R1, [R0,#0x4D]
311948:  BX              LR
