; =========================================================
; Game Engine Function: sub_205B4C
; Address            : 0x205B4C - 0x205CB6
; =========================================================

205B4C:  PUSH            {R4-R7,LR}
205B4E:  ADD             R7, SP, #0xC
205B50:  PUSH.W          {R8-R10}
205B54:  MOV             R5, R1
205B56:  LDR             R1, =(_ZTVNSt6__ndk16locale5__impE - 0x205B62); `vtable for'std::locale::__imp ...
205B58:  MOV             R4, R0
205B5A:  ADD.W           R9, R4, #8
205B5E:  ADD             R1, PC; `vtable for'std::locale::__imp
205B60:  MOV             R10, R3
205B62:  ADDS            R1, #8
205B64:  MOV.W           R0, #0xFFFFFFFF
205B68:  MOV             R6, R2
205B6A:  STRD.W          R1, R0, [R4]
205B6E:  MOV             R0, R9
205B70:  MOVS            R1, #0x1C
205B72:  BL              sub_204AF4
205B76:  ADD.W           R8, R4, #0x90
205B7A:  LDR             R1, =(asc_879DB - 0x205B82); "*" ...
205B7C:  MOV             R0, R8; int
205B7E:  ADD             R1, PC; "*"
205B80:  BL              sub_DC6DC
205B84:  ADD.W           R1, R5, #8
205B88:  MOV             R0, R9; int
205B8A:  BL              sub_20524C
205B8E:  MOVS            R5, #0
205B90:  LDRD.W          R0, R1, [R4,#8]
205B94:  SUBS            R1, R1, R0
205B96:  CMP.W           R5, R1,ASR#2
205B9A:  BCS             loc_205BAA
205B9C:  LDR.W           R0, [R0,R5,LSL#2]; this
205BA0:  CBZ             R0, loc_205BA6
205BA2:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
205BA6:  ADDS            R5, #1
205BA8:  B               loc_205B90
205BAA:  MOVS.W          R0, R10,LSL#28
205BAE:  BPL             loc_205BC0
205BB0:  MOV             R0, R4
205BB2:  MOV             R1, R6
205BB4:  BL              sub_205D08
205BB8:  MOV             R0, R4
205BBA:  MOV             R1, R6
205BBC:  BL              sub_205D40
205BC0:  MOVS.W          R0, R10,LSL#31
205BC4:  BEQ             loc_205BF6
205BC6:  MOV             R0, R4
205BC8:  MOV             R1, R6
205BCA:  BL              sub_205D78
205BCE:  MOV             R0, R4
205BD0:  MOV             R1, R6
205BD2:  BL              sub_205DB0
205BD6:  MOV             R0, R4
205BD8:  MOV             R1, R6
205BDA:  BL              sub_205DE8
205BDE:  MOV             R0, R4
205BE0:  MOV             R1, R6
205BE2:  BL              sub_205E20
205BE6:  MOV             R0, R4
205BE8:  MOV             R1, R6
205BEA:  BL              sub_205E58
205BEE:  MOV             R0, R4
205BF0:  MOV             R1, R6
205BF2:  BL              sub_205E90
205BF6:  MOVS.W          R0, R10,LSL#27
205BFA:  BPL             loc_205C3C
205BFC:  MOV             R0, R4
205BFE:  MOV             R1, R6
205C00:  BL              sub_205EC8
205C04:  MOV             R0, R4
205C06:  MOV             R1, R6
205C08:  BL              sub_205F00
205C0C:  MOV             R0, R4
205C0E:  MOV             R1, R6
205C10:  BL              sub_205F38
205C14:  MOV             R0, R4
205C16:  MOV             R1, R6
205C18:  BL              sub_205F70
205C1C:  MOV             R0, R4
205C1E:  MOV             R1, R6
205C20:  BL              sub_205FA8
205C24:  MOV             R0, R4
205C26:  MOV             R1, R6
205C28:  BL              sub_205FE0
205C2C:  MOV             R0, R4
205C2E:  MOV             R1, R6
205C30:  BL              sub_206018
205C34:  MOV             R0, R4
205C36:  MOV             R1, R6
205C38:  BL              sub_206050
205C3C:  MOVS.W          R0, R10,LSL#30
205C40:  BPL             loc_205C72
205C42:  MOV             R0, R4
205C44:  MOV             R1, R6
205C46:  BL              sub_206088
205C4A:  MOV             R0, R4
205C4C:  MOV             R1, R6
205C4E:  BL              sub_2060C0
205C52:  MOV             R0, R4
205C54:  MOV             R1, R6
205C56:  BL              sub_2060F8
205C5A:  MOV             R0, R4
205C5C:  MOV             R1, R6
205C5E:  BL              sub_206130
205C62:  MOV             R0, R4
205C64:  MOV             R1, R6
205C66:  BL              sub_206168
205C6A:  MOV             R0, R4
205C6C:  MOV             R1, R6
205C6E:  BL              sub_2061A0
205C72:  MOVS.W          R0, R10,LSL#29
205C76:  BPL             loc_205C98
205C78:  MOV             R0, R4
205C7A:  MOV             R1, R6
205C7C:  BL              sub_2061D8
205C80:  MOV             R0, R4
205C82:  MOV             R1, R6
205C84:  BL              sub_206210
205C88:  MOV             R0, R4
205C8A:  MOV             R1, R6
205C8C:  BL              sub_206248
205C90:  MOV             R0, R4
205C92:  MOV             R1, R6
205C94:  BL              sub_206280
205C98:  MOVS.W          R0, R10,LSL#26
205C9C:  BPL             loc_205CAE
205C9E:  MOV             R0, R4
205CA0:  MOV             R1, R6
205CA2:  BL              sub_2062B8
205CA6:  MOV             R0, R4
205CA8:  MOV             R1, R6
205CAA:  BL              sub_2062F0
205CAE:  MOV             R0, R4
205CB0:  POP.W           {R8-R10}
205CB4:  POP             {R4-R7,PC}
