; =========================================================
; Game Engine Function: _ZN30CTaskComplexPlayHandSignalAnim15GetAnimIdForPedEP4CPed
; Address            : 0x4D7AF0 - 0x4D7B1C
; =========================================================

4D7AF0:  LDR.W           R1, [R1,#0x59C]
4D7AF4:  SUBS            R0, R1, #7
4D7AF6:  CMP             R0, #5
4D7AF8:  BCS             loc_4D7B0E
4D7AFA:  UXTB            R2, R0
4D7AFC:  MOVS            R3, #0x17
4D7AFE:  LSR.W           R2, R3, R2
4D7B02:  LSLS            R2, R2, #0x1F
4D7B04:  ITTT NE
4D7B06:  ADRNE           R1, dword_4D7B1C
4D7B08:  LDRNE.W         R0, [R1,R0,LSL#2]
4D7B0C:  BXNE            LR
4D7B0E:  MOV.W           R0, #0xFFFFFFFF
4D7B12:  CMP             R1, #0xE
4D7B14:  IT EQ
4D7B16:  MOVWEQ          R0, #0x143
4D7B1A:  BX              LR
