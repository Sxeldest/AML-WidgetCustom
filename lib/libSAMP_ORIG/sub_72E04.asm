; =========================================================
; Game Engine Function: sub_72E04
; Address            : 0x72E04 - 0x73502
; =========================================================

72E04:  PUSH            {R4-R7,LR}
72E06:  ADD             R7, SP, #0xC
72E08:  PUSH.W          {R8-R11}
72E0C:  SUB             SP, SP, #4
72E0E:  VPUSH           {D8}
72E12:  SUB             SP, SP, #0x50
72E14:  MOV             R4, R0
72E16:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x72E20)
72E1A:  MOVS            R1, #0
72E1C:  ADD             R0, PC; __stack_chk_guard_ptr
72E1E:  LDR             R0, [R0]; __stack_chk_guard
72E20:  LDR             R0, [R0]
72E22:  STR             R0, [SP,#0x78+var_2C]
72E24:  MOV             R0, R4
72E26:  BL              sub_7D794
72E2A:  LDR             R0, =(_ZTV11ButtonPanel - 0x72E30); `vtable for'ButtonPanel ...
72E2C:  ADD             R0, PC; `vtable for'ButtonPanel
72E2E:  ADDS            R0, #8
72E30:  STR             R0, [R4]
72E32:  MOVS            R0, #0x90; unsigned int
72E34:  BLX             j__Znwj; operator new(uint)
72E38:  LDR             R1, =(off_114C24 - 0x72E42)
72E3A:  VMOV.F32        S16, #0.5
72E3E:  ADD             R1, PC; off_114C24
72E40:  LDR             R6, [R1]; dword_116D58
72E42:  MOVS            R1, #6
72E44:  STRB.W          R1, [SP,#0x78+var_48]
72E48:  MOV             R1, #0x424154
72E50:  VLDR            S0, [R6]
72E54:  STR.W           R1, [SP,#0x78+var_48+1]
72E58:  VMUL.F32        S0, S0, S16
72E5C:  VMOV            R2, S0
72E60:  ADD             R1, SP, #0x78+var_48
72E62:  STR             R0, [SP,#0x78+var_6C]
72E64:  BL              sub_7CCAC
72E68:  LDRB.W          R0, [SP,#0x78+var_48]
72E6C:  LSLS            R0, R0, #0x1F
72E6E:  ITT NE
72E70:  LDRNE           R0, [SP,#0x78+var_40]; void *
72E72:  BLXNE           j__ZdlPv; operator delete(void *)
72E76:  MOVS            R0, #0x90; unsigned int
72E78:  BLX             j__Znwj; operator new(uint)
72E7C:  VLDR            S0, [R6]
72E80:  MOVS            R1, #0
72E82:  STRB.W          R1, [SP,#0x78+var_48+3]
72E86:  MOVW            R1, #0x3E3E
72E8A:  VMUL.F32        S0, S0, S16
72E8E:  STRH.W          R1, [SP,#0x78+var_48+1]
72E92:  MOVS            R1, #4
72E94:  STRB.W          R1, [SP,#0x78+var_48]
72E98:  VMOV            R2, S0
72E9C:  ADD             R1, SP, #0x78+var_48
72E9E:  STR             R0, [SP,#0x78+var_74]
72EA0:  BL              sub_7CF5C
72EA4:  LDRB.W          R0, [SP,#0x78+var_48]
72EA8:  LSLS            R0, R0, #0x1F
72EAA:  ITT NE
72EAC:  LDRNE           R0, [SP,#0x78+var_40]; void *
72EAE:  BLXNE           j__ZdlPv; operator delete(void *)
72EB2:  MOVS            R0, #0x90; unsigned int
72EB4:  BLX             j__Znwj; operator new(uint)
72EB8:  VLDR            S0, [R6]
72EBC:  MOVS            R1, #0
72EBE:  STRB.W          R1, [SP,#0x78+var_48+3]
72EC2:  MOVW            R1, #0x3C3C
72EC6:  VMUL.F32        S0, S0, S16
72ECA:  STRH.W          R1, [SP,#0x78+var_48+1]
72ECE:  MOVS            R1, #4
72ED0:  STRB.W          R1, [SP,#0x78+var_48]
72ED4:  VMOV            R2, S0
72ED8:  ADD             R1, SP, #0x78+var_48
72EDA:  STR             R0, [SP,#0x78+var_70]
72EDC:  BL              sub_7CCAC
72EE0:  LDRB.W          R0, [SP,#0x78+var_48]
72EE4:  LSLS            R0, R0, #0x1F
72EE6:  ITT NE
72EE8:  LDRNE           R0, [SP,#0x78+var_40]; void *
72EEA:  BLXNE           j__ZdlPv; operator delete(void *)
72EEE:  MOVS            R0, #0x90; unsigned int
72EF0:  BLX             j__Znwj; operator new(uint)
72EF4:  STR             R0, [SP,#0x78+var_64]
72EF6:  VLDR            S0, [R6]
72EFA:  MOVS            R0, #6
72EFC:  STRB.W          R0, [SP,#0x78+var_48]
72F00:  MOVW            R0, #0x5345
72F04:  VMUL.F32        S0, S0, S16
72F08:  MOVT            R0, #0x43 ; 'C'
72F0C:  STR.W           R0, [SP,#0x78+var_48+1]
72F10:  VMOV            R2, S0
72F14:  LDR             R0, [SP,#0x78+var_64]
72F16:  ADD             R1, SP, #0x78+var_48
72F18:  BL              sub_7CCAC
72F1C:  LDRB.W          R0, [SP,#0x78+var_48]
72F20:  LSLS            R0, R0, #0x1F
72F22:  ITT NE
72F24:  LDRNE           R0, [SP,#0x78+var_40]; void *
72F26:  BLXNE           j__ZdlPv; operator delete(void *)
72F2A:  MOVS            R0, #0x90; unsigned int
72F2C:  BLX             j__Znwj; operator new(uint)
72F30:  VLDR            S0, [R6]
72F34:  MOV             R5, R0
72F36:  MOVS            R0, #6
72F38:  VMUL.F32        S0, S0, S16
72F3C:  STRB.W          R0, [SP,#0x78+var_48]
72F40:  MOV             R0, #0x544C41
72F48:  STR.W           R0, [SP,#0x78+var_48+1]
72F4C:  VMOV            R2, S0
72F50:  ADD             R1, SP, #0x78+var_48
72F52:  MOV             R0, R5
72F54:  BL              sub_7CCAC
72F58:  LDRB.W          R0, [SP,#0x78+var_48]
72F5C:  STR             R5, [R4,#0x70]
72F5E:  LSLS            R0, R0, #0x1F
72F60:  ITT NE
72F62:  LDRNE           R0, [SP,#0x78+var_40]; void *
72F64:  BLXNE           j__ZdlPv; operator delete(void *)
72F68:  MOVS            R0, #0x90; unsigned int
72F6A:  BLX             j__Znwj; operator new(uint)
72F6E:  STR             R0, [SP,#0x78+var_68]
72F70:  VLDR            S0, [R6]
72F74:  MOVS            R0, #6
72F76:  STRB.W          R0, [SP,#0x78+var_48]
72F7A:  MOVW            R0, #0x5053
72F7E:  VMUL.F32        S0, S0, S16
72F82:  MOVT            R0, #0x43 ; 'C'
72F86:  STR.W           R0, [SP,#0x78+var_48+1]
72F8A:  VMOV            R2, S0
72F8E:  LDR             R0, [SP,#0x78+var_68]
72F90:  ADD             R1, SP, #0x78+var_48
72F92:  BL              sub_7CCAC
72F96:  LDRB.W          R0, [SP,#0x78+var_48]
72F9A:  LSLS            R0, R0, #0x1F
72F9C:  ITT NE
72F9E:  LDRNE           R0, [SP,#0x78+var_40]; void *
72FA0:  BLXNE           j__ZdlPv; operator delete(void *)
72FA4:  MOVS            R0, #0x90; unsigned int
72FA6:  BLX             j__Znwj; operator new(uint)
72FAA:  VLDR            S0, [R6]
72FAE:  MOV             R5, R0
72FB0:  MOVS            R0, #0
72FB2:  VMUL.F32        S0, S0, S16
72FB6:  STRB.W          R0, [SP,#0x78+var_48+2]
72FBA:  MOVW            R0, #0x4802
72FBE:  STRH.W          R0, [SP,#0x78+var_48]
72FC2:  VMOV            R2, S0
72FC6:  ADD             R1, SP, #0x78+var_48
72FC8:  MOV             R0, R5
72FCA:  BL              sub_7CCAC
72FCE:  LDRB.W          R0, [SP,#0x78+var_48]
72FD2:  STR             R5, [R4,#0x6C]
72FD4:  LSLS            R0, R0, #0x1F
72FD6:  ITT NE
72FD8:  LDRNE           R0, [SP,#0x78+var_40]; void *
72FDA:  BLXNE           j__ZdlPv; operator delete(void *)
72FDE:  MOVS            R0, #0x90; unsigned int
72FE0:  BLX             j__Znwj; operator new(uint)
72FE4:  VLDR            S0, [R6]
72FE8:  MOV             R5, R0
72FEA:  MOVS            R0, #0
72FEC:  VMUL.F32        S0, S0, S16
72FF0:  STRB.W          R0, [SP,#0x78+var_48+2]
72FF4:  MOVW            R0, #0x5902
72FF8:  STRH.W          R0, [SP,#0x78+var_48]
72FFC:  VMOV            R2, S0
73000:  ADD             R1, SP, #0x78+var_48
73002:  MOV             R0, R5
73004:  BL              sub_7CCAC
73008:  LDRB.W          R0, [SP,#0x78+var_48]
7300C:  LSLS            R0, R0, #0x1F
7300E:  ITT NE
73010:  LDRNE           R0, [SP,#0x78+var_40]; void *
73012:  BLXNE           j__ZdlPv; operator delete(void *)
73016:  MOVS            R0, #0x90; unsigned int
73018:  BLX             j__Znwj; operator new(uint)
7301C:  VLDR            S0, [R6]
73020:  MOV             R8, R0
73022:  MOVS            R0, #0
73024:  VMUL.F32        S0, S0, S16
73028:  STRB.W          R0, [SP,#0x78+var_48+2]
7302C:  MOVW            R0, #0x4E02
73030:  STRH.W          R0, [SP,#0x78+var_48]
73034:  VMOV            R2, S0
73038:  ADD             R1, SP, #0x78+var_48
7303A:  MOV             R0, R8
7303C:  BL              sub_7CCAC
73040:  LDRB.W          R0, [SP,#0x78+var_48]
73044:  LSLS            R0, R0, #0x1F
73046:  ITT NE
73048:  LDRNE           R0, [SP,#0x78+var_40]; void *
7304A:  BLXNE           j__ZdlPv; operator delete(void *)
7304E:  MOVS            R0, #0x90; unsigned int
73050:  BLX             j__Znwj; operator new(uint)
73054:  VLDR            S0, [R6]
73058:  MOV             R9, R0
7305A:  MOVS            R0, #0
7305C:  VMUL.F32        S0, S0, S16
73060:  STRB.W          R0, [SP,#0x78+var_48+2]
73064:  MOVW            R0, #0x4602
73068:  STRH.W          R0, [SP,#0x78+var_48]
7306C:  VMOV            R2, S0
73070:  ADD             R1, SP, #0x78+var_48
73072:  MOV             R0, R9
73074:  BL              sub_7CCAC
73078:  LDRB.W          R0, [SP,#0x78+var_48]
7307C:  LSLS            R0, R0, #0x1F
7307E:  ITT NE
73080:  LDRNE           R0, [SP,#0x78+var_40]; void *
73082:  BLXNE           j__ZdlPv; operator delete(void *)
73086:  MOVS            R0, #0x90; unsigned int
73088:  BLX             j__Znwj; operator new(uint)
7308C:  VLDR            S0, [R6]
73090:  MOV             R10, R0
73092:  MOVS            R0, #0
73094:  VMUL.F32        S0, S0, S16
73098:  STRB.W          R0, [SP,#0x78+var_48+2]
7309C:  MOVW            R0, #0x3202
730A0:  STRH.W          R0, [SP,#0x78+var_48]
730A4:  VMOV            R2, S0
730A8:  ADD             R1, SP, #0x78+var_48
730AA:  MOV             R0, R10
730AC:  BL              sub_7CCAC
730B0:  LDRB.W          R0, [SP,#0x78+var_48]
730B4:  LSLS            R0, R0, #0x1F
730B6:  ITT NE
730B8:  LDRNE           R0, [SP,#0x78+var_40]; void *
730BA:  BLXNE           j__ZdlPv; operator delete(void *)
730BE:  MOVS            R0, #0x90; unsigned int
730C0:  BLX             j__Znwj; operator new(uint)
730C4:  VLDR            S0, [R6]
730C8:  MOV             R11, R0
730CA:  MOVS            R0, #0
730CC:  VMUL.F32        S0, S0, S16
730D0:  STRB.W          R0, [SP,#0x78+var_48+2]
730D4:  MOVW            R0, #0x4702
730D8:  STRH.W          R0, [SP,#0x78+var_48]
730DC:  VMOV            R2, S0
730E0:  ADD             R6, SP, #0x78+var_48
730E2:  MOV             R0, R11
730E4:  MOV             R1, R6
730E6:  BL              sub_7CCAC
730EA:  LDRB.W          R0, [SP,#0x78+var_48]
730EE:  STR             R5, [SP,#0x78+var_78]
730F0:  LSLS            R0, R0, #0x1F
730F2:  ITT NE
730F4:  LDRNE           R0, [SP,#0x78+var_40]; void *
730F6:  BLXNE           j__ZdlPv; operator delete(void *)
730FA:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x73104); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_0,std::allocator<ButtonPanel::ButtonPanel(void)::$_0>,void ()(void)> ...
730FC:  ADD             R5, SP, #0x78+var_60
730FE:  LDR             R1, [SP,#0x78+var_6C]
73100:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_0,std::allocator<ButtonPanel::ButtonPanel(void)::$_0>,void ()(void)>
73102:  STR             R1, [SP,#0x78+var_5C]
73104:  ADDS            R0, #8
73106:  STR             R0, [SP,#0x78+var_60]
73108:  STRD.W          R0, R1, [SP,#0x78+var_48]
7310C:  ADDS            R1, #0x58 ; 'X'
7310E:  MOV             R0, R6
73110:  STR             R5, [SP,#0x78+var_50]
73112:  STR             R6, [SP,#0x78+var_38]
73114:  BL              sub_737F4
73118:  LDR             R0, [SP,#0x78+var_38]
7311A:  CMP             R6, R0
7311C:  BEQ             loc_73124
7311E:  CBZ             R0, loc_7312E
73120:  MOVS            R1, #5
73122:  B               loc_73126
73124:  MOVS            R1, #4
73126:  LDR             R2, [R0]
73128:  LDR.W           R1, [R2,R1,LSL#2]
7312C:  BLX             R1
7312E:  LDR             R0, [SP,#0x78+var_50]
73130:  CMP             R5, R0
73132:  BEQ             loc_7313A
73134:  CBZ             R0, loc_73144
73136:  MOVS            R1, #5
73138:  B               loc_7313C
7313A:  MOVS            R1, #4
7313C:  LDR             R2, [R0]
7313E:  LDR.W           R1, [R2,R1,LSL#2]
73142:  BLX             R1
73144:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x7314C); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_1,std::allocator<ButtonPanel::ButtonPanel(void)::$_1>,void ()(void)> ...
73146:  STR             R5, [SP,#0x78+var_50]
73148:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_1,std::allocator<ButtonPanel::ButtonPanel(void)::$_1>,void ()(void)>
7314A:  STR             R6, [SP,#0x78+var_38]
7314C:  ADDS            R0, #8
7314E:  STR             R0, [SP,#0x78+var_60]
73150:  STR             R0, [SP,#0x78+var_48]
73152:  LDR             R0, [SP,#0x78+var_74]
73154:  ADD.W           R1, R0, #0x58 ; 'X'
73158:  MOV             R0, R6
7315A:  BL              sub_737F4
7315E:  LDR             R0, [SP,#0x78+var_38]
73160:  CMP             R6, R0
73162:  BEQ             loc_7316A
73164:  CBZ             R0, loc_73174
73166:  MOVS            R1, #5
73168:  B               loc_7316C
7316A:  MOVS            R1, #4
7316C:  LDR             R2, [R0]
7316E:  LDR.W           R1, [R2,R1,LSL#2]
73172:  BLX             R1
73174:  LDR             R0, [SP,#0x78+var_50]
73176:  CMP             R5, R0
73178:  BEQ             loc_73180
7317A:  CBZ             R0, loc_7318A
7317C:  MOVS            R1, #5
7317E:  B               loc_73182
73180:  MOVS            R1, #4
73182:  LDR             R2, [R0]
73184:  LDR.W           R1, [R2,R1,LSL#2]
73188:  BLX             R1
7318A:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x73192); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_2,std::allocator<ButtonPanel::ButtonPanel(void)::$_2>,void ()(void)> ...
7318C:  STR             R5, [SP,#0x78+var_50]
7318E:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_2,std::allocator<ButtonPanel::ButtonPanel(void)::$_2>,void ()(void)>
73190:  STR             R6, [SP,#0x78+var_38]
73192:  ADDS            R0, #8
73194:  STR             R0, [SP,#0x78+var_60]
73196:  STR             R0, [SP,#0x78+var_48]
73198:  LDR             R0, [SP,#0x78+var_70]
7319A:  ADD.W           R1, R0, #0x58 ; 'X'
7319E:  MOV             R0, R6
731A0:  BL              sub_737F4
731A4:  LDR             R0, [SP,#0x78+var_38]
731A6:  CMP             R6, R0
731A8:  BEQ             loc_731B0
731AA:  CBZ             R0, loc_731BA
731AC:  MOVS            R1, #5
731AE:  B               loc_731B2
731B0:  MOVS            R1, #4
731B2:  LDR             R2, [R0]
731B4:  LDR.W           R1, [R2,R1,LSL#2]
731B8:  BLX             R1
731BA:  LDR             R0, [SP,#0x78+var_50]
731BC:  CMP             R5, R0
731BE:  BEQ             loc_731DC
731C0:  CBZ             R0, loc_731E6
731C2:  MOVS            R1, #5
731C4:  B               loc_731DE
731C6:  ALIGN 4
731C8:  DCD _ZTV11ButtonPanel - 0x72E30
731CC:  DCD off_114C24 - 0x72E42
731D0:  DCD _ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x73104
731D4:  DCD _ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x7314C
731D8:  DCD _ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x73192
731DC:  MOVS            R1, #4
731DE:  LDR             R2, [R0]
731E0:  LDR.W           R1, [R2,R1,LSL#2]
731E4:  BLX             R1
731E6:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x731EE); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)> ...
731E8:  LDR             R1, [SP,#0x78+var_64]
731EA:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)>
731EC:  STR             R1, [SP,#0x78+var_5C]
731EE:  ADDS            R0, #8
731F0:  STR             R0, [SP,#0x78+var_60]
731F2:  STRD.W          R0, R1, [SP,#0x78+var_48]
731F6:  ADDS            R1, #0x58 ; 'X'
731F8:  MOV             R0, R6
731FA:  STR             R5, [SP,#0x78+var_50]
731FC:  STR             R6, [SP,#0x78+var_38]
731FE:  BL              sub_737F4
73202:  LDR             R0, [SP,#0x78+var_38]
73204:  CMP             R6, R0
73206:  BEQ             loc_7320E
73208:  CBZ             R0, loc_73218
7320A:  MOVS            R1, #5
7320C:  B               loc_73210
7320E:  MOVS            R1, #4
73210:  LDR             R2, [R0]
73212:  LDR.W           R1, [R2,R1,LSL#2]
73216:  BLX             R1
73218:  LDR             R0, [SP,#0x78+var_50]
7321A:  CMP             R5, R0
7321C:  BEQ             loc_73224
7321E:  CBZ             R0, loc_7322E
73220:  MOVS            R1, #5
73222:  B               loc_73226
73224:  MOVS            R1, #4
73226:  LDR             R2, [R0]
73228:  LDR.W           R1, [R2,R1,LSL#2]
7322C:  BLX             R1
7322E:  LDR             R0, [R4,#0x70]
73230:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x73238); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)> ...
73232:  STR             R5, [SP,#0x78+var_50]
73234:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)>
73236:  STR             R4, [SP,#0x78+var_5C]
73238:  ADDS            R1, #8
7323A:  STR             R1, [SP,#0x78+var_60]
7323C:  STRD.W          R1, R4, [SP,#0x78+var_48]
73240:  ADD.W           R1, R0, #0x58 ; 'X'
73244:  MOV             R0, R6
73246:  STR             R6, [SP,#0x78+var_38]
73248:  BL              sub_737F4
7324C:  LDR             R0, [SP,#0x78+var_38]
7324E:  CMP             R6, R0
73250:  BEQ             loc_73258
73252:  CBZ             R0, loc_73262
73254:  MOVS            R1, #5
73256:  B               loc_7325A
73258:  MOVS            R1, #4
7325A:  LDR             R2, [R0]
7325C:  LDR.W           R1, [R2,R1,LSL#2]
73260:  BLX             R1
73262:  LDR             R0, [SP,#0x78+var_50]
73264:  CMP             R5, R0
73266:  BEQ             loc_7326E
73268:  CBZ             R0, loc_73278
7326A:  MOVS            R1, #5
7326C:  B               loc_73270
7326E:  MOVS            R1, #4
73270:  LDR             R2, [R0]
73272:  LDR.W           R1, [R2,R1,LSL#2]
73276:  BLX             R1
73278:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_5NS_9allocatorIS3_EEFvvEEE - 0x73280); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)> ...
7327A:  LDR             R1, [SP,#0x78+var_68]
7327C:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)>
7327E:  STR             R1, [SP,#0x78+var_5C]
73280:  ADDS            R0, #8
73282:  STR             R0, [SP,#0x78+var_60]
73284:  STRD.W          R0, R1, [SP,#0x78+var_48]
73288:  ADDS            R1, #0x58 ; 'X'
7328A:  MOV             R0, R6
7328C:  STR             R5, [SP,#0x78+var_50]
7328E:  STR             R6, [SP,#0x78+var_38]
73290:  BL              sub_737F4
73294:  LDR             R0, [SP,#0x78+var_38]
73296:  CMP             R6, R0
73298:  BEQ             loc_732A0
7329A:  CBZ             R0, loc_732AA
7329C:  MOVS            R1, #5
7329E:  B               loc_732A2
732A0:  MOVS            R1, #4
732A2:  LDR             R2, [R0]
732A4:  LDR.W           R1, [R2,R1,LSL#2]
732A8:  BLX             R1
732AA:  LDR             R0, [SP,#0x78+var_50]
732AC:  CMP             R5, R0
732AE:  BEQ             loc_732B6
732B0:  CBZ             R0, loc_732C0
732B2:  MOVS            R1, #5
732B4:  B               loc_732B8
732B6:  MOVS            R1, #4
732B8:  LDR             R2, [R0]
732BA:  LDR.W           R1, [R2,R1,LSL#2]
732BE:  BLX             R1
732C0:  LDR             R0, [R4,#0x6C]
732C2:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_6NS_9allocatorIS3_EEFvvEEE - 0x732CA); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_6,std::allocator<ButtonPanel::ButtonPanel(void)::$_6>,void ()(void)> ...
732C4:  STR             R5, [SP,#0x78+var_50]
732C6:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_6,std::allocator<ButtonPanel::ButtonPanel(void)::$_6>,void ()(void)>
732C8:  STR             R4, [SP,#0x78+var_5C]
732CA:  ADDS            R1, #8
732CC:  STR             R1, [SP,#0x78+var_60]
732CE:  STRD.W          R1, R4, [SP,#0x78+var_48]
732D2:  ADD.W           R1, R0, #0x58 ; 'X'
732D6:  MOV             R0, R6
732D8:  STR             R6, [SP,#0x78+var_38]
732DA:  BL              sub_737F4
732DE:  LDR             R0, [SP,#0x78+var_38]
732E0:  CMP             R6, R0
732E2:  BEQ             loc_732EA
732E4:  CBZ             R0, loc_732F4
732E6:  MOVS            R1, #5
732E8:  B               loc_732EC
732EA:  MOVS            R1, #4
732EC:  LDR             R2, [R0]
732EE:  LDR.W           R1, [R2,R1,LSL#2]
732F2:  BLX             R1
732F4:  LDR             R0, [SP,#0x78+var_50]
732F6:  CMP             R5, R0
732F8:  BEQ             loc_73300
732FA:  CBZ             R0, loc_7330A
732FC:  MOVS            R1, #5
732FE:  B               loc_73302
73300:  MOVS            R1, #4
73302:  LDR             R2, [R0]
73304:  LDR.W           R1, [R2,R1,LSL#2]
73308:  BLX             R1
7330A:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_7NS_9allocatorIS3_EEFvvEEE - 0x73312); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_7,std::allocator<ButtonPanel::ButtonPanel(void)::$_7>,void ()(void)> ...
7330C:  LDR             R1, [SP,#0x78+var_78]
7330E:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_7,std::allocator<ButtonPanel::ButtonPanel(void)::$_7>,void ()(void)>
73310:  STR             R1, [SP,#0x78+var_5C]
73312:  ADDS            R0, #8
73314:  STR             R0, [SP,#0x78+var_60]
73316:  STRD.W          R0, R1, [SP,#0x78+var_48]
7331A:  ADDS            R1, #0x58 ; 'X'
7331C:  MOV             R0, R6
7331E:  STR             R5, [SP,#0x78+var_50]
73320:  STR             R6, [SP,#0x78+var_38]
73322:  BL              sub_737F4
73326:  LDR             R0, [SP,#0x78+var_38]
73328:  CMP             R6, R0
7332A:  BEQ             loc_73332
7332C:  CBZ             R0, loc_7333C
7332E:  MOVS            R1, #5
73330:  B               loc_73334
73332:  MOVS            R1, #4
73334:  LDR             R2, [R0]
73336:  LDR.W           R1, [R2,R1,LSL#2]
7333A:  BLX             R1
7333C:  LDR             R0, [SP,#0x78+var_50]
7333E:  CMP             R5, R0
73340:  BEQ             loc_73348
73342:  CBZ             R0, loc_73352
73344:  MOVS            R1, #5
73346:  B               loc_7334A
73348:  MOVS            R1, #4
7334A:  LDR             R2, [R0]
7334C:  LDR.W           R1, [R2,R1,LSL#2]
73350:  BLX             R1
73352:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_8NS_9allocatorIS3_EEFvvEEE - 0x7335E); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_8,std::allocator<ButtonPanel::ButtonPanel(void)::$_8>,void ()(void)> ...
73354:  ADD.W           R1, R8, #0x58 ; 'X'
73358:  STR             R5, [SP,#0x78+var_50]
7335A:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_8,std::allocator<ButtonPanel::ButtonPanel(void)::$_8>,void ()(void)>
7335C:  STR.W           R8, [SP,#0x78+var_5C]
73360:  ADDS            R0, #8
73362:  STR             R0, [SP,#0x78+var_60]
73364:  STRD.W          R0, R8, [SP,#0x78+var_48]
73368:  MOV             R0, R6
7336A:  STR             R6, [SP,#0x78+var_38]
7336C:  BL              sub_737F4
73370:  LDR             R0, [SP,#0x78+var_38]
73372:  CMP             R6, R0
73374:  BEQ             loc_7337C
73376:  CBZ             R0, loc_73386
73378:  MOVS            R1, #5
7337A:  B               loc_7337E
7337C:  MOVS            R1, #4
7337E:  LDR             R2, [R0]
73380:  LDR.W           R1, [R2,R1,LSL#2]
73384:  BLX             R1
73386:  LDR             R0, [SP,#0x78+var_50]
73388:  CMP             R5, R0
7338A:  BEQ             loc_73392
7338C:  CBZ             R0, loc_7339C
7338E:  MOVS            R1, #5
73390:  B               loc_73394
73392:  MOVS            R1, #4
73394:  LDR             R2, [R0]
73396:  LDR.W           R1, [R2,R1,LSL#2]
7339A:  BLX             R1
7339C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_9NS_9allocatorIS3_EEFvvEEE - 0x733A8); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_9,std::allocator<ButtonPanel::ButtonPanel(void)::$_9>,void ()(void)> ...
7339E:  ADD.W           R1, R9, #0x58 ; 'X'
733A2:  STR             R5, [SP,#0x78+var_50]
733A4:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_9,std::allocator<ButtonPanel::ButtonPanel(void)::$_9>,void ()(void)>
733A6:  STR.W           R9, [SP,#0x78+var_5C]
733AA:  ADDS            R0, #8
733AC:  STR             R0, [SP,#0x78+var_60]
733AE:  STRD.W          R0, R9, [SP,#0x78+var_48]
733B2:  MOV             R0, R6
733B4:  STR             R6, [SP,#0x78+var_38]
733B6:  BL              sub_737F4
733BA:  LDR             R0, [SP,#0x78+var_38]
733BC:  CMP             R6, R0
733BE:  BEQ             loc_733C6
733C0:  CBZ             R0, loc_733D0
733C2:  MOVS            R1, #5
733C4:  B               loc_733C8
733C6:  MOVS            R1, #4
733C8:  LDR             R2, [R0]
733CA:  LDR.W           R1, [R2,R1,LSL#2]
733CE:  BLX             R1
733D0:  LDR             R0, [SP,#0x78+var_50]
733D2:  CMP             R5, R0
733D4:  BEQ             loc_733DC
733D6:  CBZ             R0, loc_733E6
733D8:  MOVS            R1, #5
733DA:  B               loc_733DE
733DC:  MOVS            R1, #4
733DE:  LDR             R2, [R0]
733E0:  LDR.W           R1, [R2,R1,LSL#2]
733E4:  BLX             R1
733E6:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE4$_10NS_9allocatorIS3_EEFvvEEE - 0x733F2); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_10,std::allocator<ButtonPanel::ButtonPanel(void)::$_10>,void ()(void)> ...
733E8:  ADD.W           R1, R10, #0x58 ; 'X'
733EC:  STR             R5, [SP,#0x78+var_50]
733EE:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_10,std::allocator<ButtonPanel::ButtonPanel(void)::$_10>,void ()(void)>
733F0:  STR.W           R10, [SP,#0x78+var_5C]
733F4:  ADDS            R0, #8
733F6:  STR             R0, [SP,#0x78+var_60]
733F8:  STRD.W          R0, R10, [SP,#0x78+var_48]
733FC:  MOV             R0, R6
733FE:  STR             R6, [SP,#0x78+var_38]
73400:  BL              sub_737F4
73404:  LDR             R0, [SP,#0x78+var_38]
73406:  CMP             R6, R0
73408:  BEQ             loc_73410
7340A:  CBZ             R0, loc_7341A
7340C:  MOVS            R1, #5
7340E:  B               loc_73412
73410:  MOVS            R1, #4
73412:  LDR             R2, [R0]
73414:  LDR.W           R1, [R2,R1,LSL#2]
73418:  BLX             R1
7341A:  LDR             R0, [SP,#0x78+var_50]
7341C:  CMP             R5, R0
7341E:  BEQ             loc_73426
73420:  CBZ             R0, loc_73430
73422:  MOVS            R1, #5
73424:  B               loc_73428
73426:  MOVS            R1, #4
73428:  LDR             R2, [R0]
7342A:  LDR.W           R1, [R2,R1,LSL#2]
7342E:  BLX             R1
73430:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE4$_11NS_9allocatorIS3_EEFvvEEE - 0x7343C); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_11,std::allocator<ButtonPanel::ButtonPanel(void)::$_11>,void ()(void)> ...
73432:  ADD.W           R1, R11, #0x58 ; 'X'
73436:  STR             R5, [SP,#0x78+var_50]
73438:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_11,std::allocator<ButtonPanel::ButtonPanel(void)::$_11>,void ()(void)>
7343A:  STR.W           R11, [SP,#0x78+var_5C]
7343E:  ADDS            R0, #8
73440:  STR             R0, [SP,#0x78+var_60]
73442:  STRD.W          R0, R11, [SP,#0x78+var_48]
73446:  MOV             R0, R6
73448:  STR             R6, [SP,#0x78+var_38]
7344A:  BL              sub_737F4
7344E:  LDR             R0, [SP,#0x78+var_38]
73450:  CMP             R6, R0
73452:  BEQ             loc_7345A
73454:  CBZ             R0, loc_73464
73456:  MOVS            R1, #5
73458:  B               loc_7345C
7345A:  MOVS            R1, #4
7345C:  LDR             R2, [R0]
7345E:  LDR.W           R1, [R2,R1,LSL#2]
73462:  BLX             R1
73464:  LDR             R0, [SP,#0x78+var_50]
73466:  CMP             R5, R0
73468:  BEQ             loc_73472
7346A:  LDR             R5, [SP,#0x78+var_78]
7346C:  CBZ             R0, loc_7347E
7346E:  MOVS            R1, #5
73470:  B               loc_73476
73472:  MOVS            R1, #4
73474:  LDR             R5, [SP,#0x78+var_78]
73476:  LDR             R2, [R0]
73478:  LDR.W           R1, [R2,R1,LSL#2]
7347C:  BLX             R1
7347E:  LDR             R1, [SP,#0x78+var_70]
73480:  MOV             R0, R4
73482:  BL              sub_7C73C
73486:  LDR             R1, [SP,#0x78+var_64]
73488:  MOV             R0, R4
7348A:  BL              sub_7C73C
7348E:  LDR             R1, [SP,#0x78+var_6C]
73490:  MOV             R0, R4
73492:  BL              sub_7C73C
73496:  LDR             R1, [R4,#0x70]
73498:  MOV             R0, R4
7349A:  BL              sub_7C73C
7349E:  LDR             R1, [SP,#0x78+var_68]
734A0:  MOV             R0, R4
734A2:  BL              sub_7C73C
734A6:  MOV             R0, R4
734A8:  MOV             R1, R9
734AA:  BL              sub_7C73C
734AE:  LDR             R1, [R4,#0x6C]
734B0:  MOV             R0, R4
734B2:  BL              sub_7C73C
734B6:  MOV             R0, R4
734B8:  MOV             R1, R10
734BA:  BL              sub_7C73C
734BE:  MOV             R0, R4
734C0:  MOV             R1, R5
734C2:  BL              sub_7C73C
734C6:  MOV             R0, R4
734C8:  MOV             R1, R8
734CA:  BL              sub_7C73C
734CE:  MOV             R0, R4
734D0:  MOV             R1, R11
734D2:  BL              sub_7C73C
734D6:  LDR             R1, [SP,#0x78+var_74]
734D8:  MOV             R0, R4
734DA:  BL              sub_7C73C
734DE:  LDR             R0, [SP,#0x78+var_2C]
734E0:  LDR             R1, =(__stack_chk_guard_ptr - 0x734E6)
734E2:  ADD             R1, PC; __stack_chk_guard_ptr
734E4:  LDR             R1, [R1]; __stack_chk_guard
734E6:  LDR             R1, [R1]
734E8:  CMP             R1, R0
734EA:  ITTTT EQ
734EC:  MOVEQ           R0, R4
734EE:  ADDEQ           SP, SP, #0x50 ; 'P'
734F0:  VPOPEQ          {D8}
734F4:  ADDEQ           SP, SP, #4
734F6:  ITT EQ
734F8:  POPEQ.W         {R8-R11}
734FC:  POPEQ           {R4-R7,PC}
734FE:  BLX             __stack_chk_fail
