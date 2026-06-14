; =========================================================
; Game Engine Function: _Z19OS_SystemCheckPausei
; Address            : 0x26A82C - 0x26A898
; =========================================================

26A82C:  PUSH            {R4-R7,LR}
26A82E:  ADD             R7, SP, #0xC
26A830:  PUSH.W          {R11}
26A834:  MOV             R1, R0
26A836:  LDR             R0, =(IsAndroidPaused_ptr - 0x26A83C)
26A838:  ADD             R0, PC; IsAndroidPaused_ptr
26A83A:  LDR             R0, [R0]; IsAndroidPaused
26A83C:  LDR             R2, [R0]
26A83E:  MOVS            R0, #0
26A840:  CBZ             R2, loc_26A892
26A842:  LDR             R2, =(IsAndroidInMultiplayer_ptr - 0x26A848)
26A844:  ADD             R2, PC; IsAndroidInMultiplayer_ptr
26A846:  LDR             R2, [R2]; IsAndroidInMultiplayer
26A848:  LDR             R2, [R2]
26A84A:  CBNZ            R2, loc_26A892
26A84C:  CMP.W           R1, #0xFFFFFFFF
26A850:  BLE             loc_26A86C
26A852:  MOV             R0, R1; useconds
26A854:  BLX             usleep
26A858:  LDR             R0, =(IsAndroidPaused_ptr - 0x26A85E)
26A85A:  ADD             R0, PC; IsAndroidPaused_ptr
26A85C:  LDR             R0, [R0]; IsAndroidPaused
26A85E:  LDR             R0, [R0]
26A860:  CMP             R0, #0
26A862:  IT NE
26A864:  MOVNE           R0, #1
26A866:  POP.W           {R11}
26A86A:  POP             {R4-R7,PC}
26A86C:  LDR             R0, =(IsAndroidInMultiplayer_ptr - 0x26A87C)
26A86E:  MOVW            R4, #:lower16:(elf_hash_chain+0x8538)
26A872:  LDR             R1, =(IsAndroidPaused_ptr - 0x26A87E)
26A874:  MOVT            R4, #:upper16:(elf_hash_chain+0x8538)
26A878:  ADD             R0, PC; IsAndroidInMultiplayer_ptr
26A87A:  ADD             R1, PC; IsAndroidPaused_ptr
26A87C:  LDR             R5, [R0]; IsAndroidInMultiplayer
26A87E:  LDR             R6, [R1]; IsAndroidPaused
26A880:  MOV             R0, R4; useconds
26A882:  BLX             usleep
26A886:  LDR             R1, [R6]
26A888:  MOVS            R0, #0
26A88A:  CBZ             R1, loc_26A892
26A88C:  LDR             R1, [R5]
26A88E:  CMP             R1, #0
26A890:  BEQ             loc_26A880
26A892:  POP.W           {R11}
26A896:  POP             {R4-R7,PC}
