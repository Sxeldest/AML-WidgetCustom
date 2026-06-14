; =========================================================
; Game Engine Function: _ZN7CCamera21ClearPlayerWeaponModeEv
; Address            : 0x3D9F8C - 0x3D9FD8
; =========================================================

3D9F8C:  PUSH            {R7,LR}
3D9F8E:  MOV             R7, SP
3D9F90:  MOVW            R2, #:lower16:(elf_hash_chain+0xFE97)
3D9F94:  MOVS            R1, #0
3D9F96:  MOVT            R2, #:upper16:(elf_hash_chain+0xFE97)
3D9F9A:  STR.W           R1, [R0,#0x7B8]
3D9F9E:  STR.W           R2, [R0,#0x7BC]
3D9FA2:  STRH.W          R1, [R0,#0x7B4]
3D9FA6:  MOV.W           R0, #0xFFFFFFFF; int
3D9FAA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D9FAE:  CMP             R0, #0
3D9FB0:  IT EQ
3D9FB2:  POPEQ           {R7,PC}
3D9FB4:  MOV.W           R0, #0xFFFFFFFF; int
3D9FB8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D9FBC:  LDR.W           R0, [R0,#0x44C]
3D9FC0:  CMP             R0, #0xC
3D9FC2:  BNE             locret_3D9FD6
3D9FC4:  MOV.W           R0, #0xFFFFFFFF; int
3D9FC8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D9FCC:  MOVS            R1, #1
3D9FCE:  POP.W           {R7,LR}
3D9FD2:  B.W             sub_18D928
3D9FD6:  POP             {R7,PC}
