; =========================================================
; Game Engine Function: _ZN7CDarkel27FindTotalPedsKilledByPlayerEi
; Address            : 0x304914 - 0x30496E
; =========================================================

304914:  LDR             R1, =(_ZN7CDarkel15RegisteredKillsE_ptr - 0x304920)
304916:  VMOV.I32        Q8, #0
30491A:  MOVS            R2, #0
30491C:  ADD             R1, PC; _ZN7CDarkel15RegisteredKillsE_ptr
30491E:  LDR             R1, [R1]; CDarkel::RegisteredKills ...
304920:  ADD.W           R1, R1, R0,LSL#1
304924:  ADDS            R3, R1, R2
304926:  ADDS            R2, #0x10
304928:  VLD2.16         {D18-D19}, [R3]
30492C:  CMP.W           R2, #0x630
304930:  VADDW.S16       Q8, Q8, D18
304934:  BNE             loc_304924
304936:  VEXT.8          Q9, Q8, Q8, #8
30493A:  LDR             R2, =(_ZN7CDarkel15RegisteredKillsE_ptr - 0x304944)
30493C:  VADD.I32        Q8, Q8, Q9
304940:  ADD             R2, PC; _ZN7CDarkel15RegisteredKillsE_ptr
304942:  LDR             R2, [R2]; CDarkel::RegisteredKills ...
304944:  VDUP.32         Q9, D16[1]
304948:  ADD.W           R0, R2, R0,LSL#1
30494C:  VADD.I32        Q8, Q8, Q9
304950:  LDRSH.W         R2, [R0,#0x630]
304954:  LDRSH.W         R3, [R0,#0x634]
304958:  VMOV.32         R12, D16[0]
30495C:  LDRSH.W         R1, [R0,#0x638]
304960:  LDRSH.W         R0, [R0,#0x63C]
304964:  ADD             R2, R12
304966:  ADD             R2, R3
304968:  ADD             R1, R2
30496A:  ADD             R0, R1
30496C:  BX              LR
