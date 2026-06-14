; =========================================================
; Game Engine Function: _ZN8CPedType10InitialiseEv
; Address            : 0x4C2F08 - 0x4C2F32
; =========================================================

4C2F08:  PUSH            {R7,LR}
4C2F0A:  MOV             R7, SP
4C2F0C:  MOV.W           R0, #0x288; unsigned int
4C2F10:  BLX             _Znaj; operator new[](uint)
4C2F14:  LDR             R1, =(_ZN8CPedType13ms_apPedTypesE_ptr - 0x4C2F1E)
4C2F16:  MOVS            R2, #0x20 ; ' '
4C2F18:  MOVS            R3, #0x14
4C2F1A:  ADD             R1, PC; _ZN8CPedType13ms_apPedTypesE_ptr
4C2F1C:  STRD.W          R3, R2, [R0],#8
4C2F20:  LDR             R1, [R1]; CPedType::ms_apPedTypes ...
4C2F22:  STR             R0, [R1]; CPedType::ms_apPedTypes
4C2F24:  MOV.W           R1, #0x280
4C2F28:  BLX             j___aeabi_memclr8_0
4C2F2C:  POP.W           {R7,LR}
4C2F30:  B               _ZN8CPedType11LoadPedDataEv; CPedType::LoadPedData(void)
