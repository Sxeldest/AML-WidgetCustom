; =========================================================
; Game Engine Function: _ZN19CPedDebugVisualiser23VisualisePedsNearPlayerEv
; Address            : 0x4AC9C0 - 0x4AC9D8
; =========================================================

4AC9C0:  LDR             R0, =(TheCamera_ptr - 0x4AC9C6)
4AC9C2:  ADD             R0, PC; TheCamera_ptr
4AC9C4:  LDR             R0, [R0]; TheCamera
4AC9C6:  LDRB.W          R0, [R0,#(byte_951FFC - 0x951FA8)]
4AC9CA:  CMP             R0, #0
4AC9CC:  ITT EQ
4AC9CE:  MOVEQ.W         R0, #0xFFFFFFFF; int
4AC9D2:  BEQ.W           j_j__Z13FindPlayerPedi; j_FindPlayerPed(int)
4AC9D6:  BX              LR
