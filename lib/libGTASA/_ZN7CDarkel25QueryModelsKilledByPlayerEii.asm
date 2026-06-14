; =========================================================
; Game Engine Function: _ZN7CDarkel25QueryModelsKilledByPlayerEii
; Address            : 0x304900 - 0x304910
; =========================================================

304900:  LDR             R2, =(_ZN7CDarkel15RegisteredKillsE_ptr - 0x304906)
304902:  ADD             R2, PC; _ZN7CDarkel15RegisteredKillsE_ptr
304904:  LDR             R2, [R2]; CDarkel::RegisteredKills ...
304906:  ADD.W           R0, R2, R0,LSL#2
30490A:  LDRSH.W         R0, [R0,R1,LSL#1]
30490E:  BX              LR
