; =========================================================
; Game Engine Function: sub_112BF4
; Address            : 0x112BF4 - 0x112D1C
; =========================================================

112BF4:  PUSH            {R4-R7,LR}
112BF6:  ADD             R7, SP, #0xC
112BF8:  PUSH.W          {R8-R10}
112BFC:  SUB             SP, SP, #0x20
112BFE:  MOV             R8, R0
112C00:  MOVS            R0, #0x28 ; '('; unsigned int
112C02:  MOV             R10, R3
112C04:  MOV             R4, R2
112C06:  MOV             R9, R1
112C08:  BLX             j__Znwj; operator new(uint)
112C0C:  LDR             R1, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN7sigslot6detail8slot_pmfIM18custom_speedometerFvvEPS4_JEEENS_9allocatorIS8_EEEE - 0x112C18); `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot_pmf<void (custom_speedometer::*)(void),custom_speedometer*>> ...
112C0E:  MOV             R5, R0
112C10:  LDR             R0, =(_ZTVN7sigslot6detail8slot_pmfIM18custom_speedometerFvvEPS2_JEEE - 0x112C1E); `vtable for'sigslot::detail::slot_pmf<void (custom_speedometer::*)(void),custom_speedometer*> ...
112C12:  MOVS            R6, #1
112C14:  ADD             R1, PC; `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot_pmf<void (custom_speedometer::*)(void),custom_speedometer*>>
112C16:  LDRD.W          R2, R3, [R4]
112C1A:  ADD             R0, PC; `vtable for'sigslot::detail::slot_pmf<void (custom_speedometer::*)(void),custom_speedometer*>
112C1C:  ADDS            R1, #8
112C1E:  STR             R1, [R5]
112C20:  ADDS            R0, #8
112C22:  MOV             R1, R5
112C24:  MOVS            R4, #0
112C26:  STR.W           R0, [R1,#0xC]!
112C2A:  MOV             R0, R5
112C2C:  STRH            R6, [R5,#0x14]
112C2E:  LDR.W           R6, [R10]
112C32:  STR.W           R4, [R0,#4]!
112C36:  STR             R4, [R5,#8]
112C38:  STR             R4, [R5,#0x10]
112C3A:  STRD.W          R9, R2, [R5,#0x18]
112C3E:  STRD.W          R3, R6, [R5,#0x20]
112C42:  STR             R5, [SP,#0x38+var_30]
112C44:  STR             R1, [SP,#0x38+var_34]
112C46:  LDREX.W         R1, [R0]
112C4A:  ADDS            R1, #1
112C4C:  STREX.W         R2, R1, [R0]
112C50:  CMP             R2, #0
112C52:  BNE             loc_112C46
112C54:  DMB.W           ISH
112C58:  LDREX.W         R1, [R0]
112C5C:  SUBS            R2, R1, #1
112C5E:  STREX.W         R3, R2, [R0]
112C62:  CMP             R3, #0
112C64:  BNE             loc_112C58
112C66:  DMB.W           ISH
112C6A:  CBNZ            R1, loc_112C7A
112C6C:  LDR             R0, [R5]
112C6E:  LDR             R1, [R0,#8]
112C70:  MOV             R0, R5
112C72:  BLX             R1
112C74:  MOV             R0, R5; this
112C76:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112C7A:  LDRD.W          R4, R6, [SP,#0x38+var_34]
112C7E:  CBZ             R6, loc_112C92
112C80:  ADD.W           R0, R6, #8
112C84:  LDREX.W         R1, [R0]
112C88:  ADDS            R1, #1
112C8A:  STREX.W         R2, R1, [R0]
112C8E:  CMP             R2, #0
112C90:  BNE             loc_112C84
112C92:  MOV             R5, R9
112C94:  LDR             R2, =(_ZTVN7sigslot10connectionE - 0x112C9E); `vtable for'sigslot::connection ...
112C96:  LDR.W           R0, [R5,#8]!
112C9A:  ADD             R2, PC; `vtable for'sigslot::connection
112C9C:  STR.W           R6, [R8,#8]
112CA0:  LDRD.W          R1, R3, [R5,#4]
112CA4:  ADD.W           R10, R2, #8
112CA8:  STRD.W          R10, R4, [R8]
112CAC:  SUBS            R2, R1, R0
112CAE:  CMP             R1, R3
112CB0:  MOV.W           R2, R2,ASR#3
112CB4:  STR             R2, [R4,#4]
112CB6:  BCS             loc_112CC6
112CB8:  STRD.W          R4, R6, [R1]
112CBC:  ADD.W           R0, R1, #8
112CC0:  STR.W           R0, [R9,#0xC]
112CC4:  B               loc_112D0E
112CC6:  ADDS            R1, R2, #1
112CC8:  CMP.W           R1, #0x20000000
112CCC:  BCS             loc_112D16
112CCE:  SUBS            R0, R3, R0
112CD0:  MOV             R3, #0x7FFFFFF8
112CD8:  CMP.W           R1, R0,ASR#2
112CDC:  IT LS
112CDE:  ASRLS           R1, R0, #2
112CE0:  CMP             R0, R3
112CE2:  IT CS
112CE4:  MOVCS           R1, #0x1FFFFFFF
112CE8:  ADD.W           R3, R9, #0x10
112CEC:  ADD             R0, SP, #0x38+var_2C
112CEE:  BL              sub_113570
112CF2:  LDR             R0, [SP,#0x38+var_24]
112CF4:  STRD.W          R4, R6, [R0],#8
112CF8:  STR             R0, [SP,#0x38+var_24]
112CFA:  MOVS            R0, #0
112CFC:  STRD.W          R0, R0, [SP,#0x38+var_34]
112D00:  ADD             R1, SP, #0x38+var_2C
112D02:  MOV             R0, R5
112D04:  BL              sub_1135B8
112D08:  ADD             R0, SP, #0x38+var_2C
112D0A:  BL              sub_113608
112D0E:  ADD             SP, SP, #0x20 ; ' '
112D10:  POP.W           {R8-R10}
112D14:  POP             {R4-R7,PC}
112D16:  MOV             R0, R5
112D18:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
