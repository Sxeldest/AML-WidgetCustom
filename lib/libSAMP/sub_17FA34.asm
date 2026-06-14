; =========================================================
; Game Engine Function: sub_17FA34
; Address            : 0x17FA34 - 0x17FAE8
; =========================================================

17FA34:  PUSH            {R4,R5,R7,LR}
17FA36:  ADD             R7, SP, #8
17FA38:  MOV             R4, R0
17FA3A:  LDR             R0, =(_ZTV7RakPeer - 0x17FA40); `vtable for'RakPeer ...
17FA3C:  ADD             R0, PC; `vtable for'RakPeer
17FA3E:  ADDS            R0, #8
17FA40:  STR             R0, [R4]
17FA42:  MOV             R0, R4
17FA44:  BL              sub_181656
17FA48:  LDR             R0, [R4]
17FA4A:  LDR             R3, [R0,#0x28]
17FA4C:  MOV             R0, R4
17FA4E:  MOVS            R1, #0
17FA50:  MOVS            R2, #0
17FA52:  BLX             R3
17FA54:  BL              sub_18CE94
17FA58:  BL              sub_18D35C
17FA5C:  LDR.W           R0, [R4,#0x9CC]
17FA60:  CBZ             R0, loc_17FA6C
17FA62:  LDR.W           R0, [R4,#0x9C0]; void *
17FA66:  CBZ             R0, loc_17FA6C
17FA68:  BLX             j__ZdaPv; operator delete[](void *)
17FA6C:  ADDW            R0, R4, #0x9A8
17FA70:  BL              sub_17F990
17FA74:  ADDW            R0, R4, #0x814
17FA78:  BL              sub_1848C6
17FA7C:  ADDW            R0, R4, #0x7D4
17FA80:  BL              sub_17E5E4
17FA84:  ADDW            R0, R4, #0x7BC
17FA88:  BL              sub_17F9BC
17FA8C:  ADD.W           R0, R4, #0x38C
17FA90:  BL              sub_17F9E8
17FA94:  LDR.W           R0, [R4,#0x388]
17FA98:  CBZ             R0, loc_17FAA4
17FA9A:  LDR.W           R0, [R4,#0x380]; void *
17FA9E:  CBZ             R0, loc_17FAA4
17FAA0:  BLX             j__ZdaPv; operator delete[](void *)
17FAA4:  LDR.W           R0, [R4,#0x37C]
17FAA8:  CBZ             R0, loc_17FAB4
17FAAA:  LDR.W           R0, [R4,#0x374]; void *
17FAAE:  CBZ             R0, loc_17FAB4
17FAB0:  BLX             j__ZdaPv; operator delete[](void *)
17FAB4:  ADD.W           R0, R4, #0x370
17FAB8:  BL              sub_18CB64
17FABC:  ADD.W           R0, R4, #0x36C
17FAC0:  BL              sub_18CB64
17FAC4:  ADD.W           R0, R4, #0x350
17FAC8:  BL              sub_18CB64
17FACC:  ADD.W           R0, R4, #0x344
17FAD0:  BL              sub_17FA18
17FAD4:  ADD.W           R0, R4, #0x120
17FAD8:  BL              sub_17D542
17FADC:  ADD.W           R0, R4, #0xC
17FAE0:  BL              sub_17D542
17FAE4:  MOV             R0, R4
17FAE6:  POP             {R4,R5,R7,PC}
