; =========================================================
; Game Engine Function: _ZN11CMenuSystem7ProcessEa
; Address            : 0x43C120 - 0x43C28E
; =========================================================

43C120:  PUSH            {R4,R5,R7,LR}
43C122:  ADD             R7, SP, #8
43C124:  MOV             R5, R0
43C126:  ADDS.W          R0, R5, #0x63 ; 'c'
43C12A:  BNE             loc_43C160
43C12C:  LDR             R0, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43C132)
43C12E:  ADD             R0, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43C130:  LDR             R0, [R0]; CMenuSystem::CurrentMenuInUse ...
43C132:  LDRB            R0, [R0]; CMenuSystem::CurrentMenuInUse
43C134:  CBZ             R0, loc_43C18E
43C136:  LDR             R1, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43C13C)
43C138:  ADD             R1, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43C13A:  LDR             R1, [R1]; CMenuSystem::MenuInUse ...
43C13C:  LDRB            R1, [R1]; CMenuSystem::MenuInUse
43C13E:  CMP             R1, #0
43C140:  BEQ             loc_43C1DE
43C142:  LDR             R0, =(MenuNumber_ptr - 0x43C148)
43C144:  ADD             R0, PC; MenuNumber_ptr
43C146:  LDR             R0, [R0]; MenuNumber
43C148:  LDR             R0, [R0]
43C14A:  LDRB.W          R0, [R0,#0x40]
43C14E:  CMP             R0, #1
43C150:  BEQ             loc_43C1CE
43C152:  CMP             R0, #0
43C154:  BNE             loc_43C1D6
43C156:  MOVS            R0, #0; this
43C158:  MOVS            R1, #0; unsigned __int8
43C15A:  BLX             j__ZN11CMenuSystem19DisplayStandardMenuEhh; CMenuSystem::DisplayStandardMenu(uchar,uchar)
43C15E:  B               loc_43C1D6
43C160:  LDR             R0, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43C166)
43C162:  ADD             R0, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43C164:  LDR             R0, [R0]; CMenuSystem::MenuInUse ...
43C166:  LDRB            R0, [R0,R5]
43C168:  CMP             R0, #0
43C16A:  BEQ.W           locret_43C27E
43C16E:  LDR             R0, =(MenuNumber_ptr - 0x43C176)
43C170:  UXTB            R4, R5
43C172:  ADD             R0, PC; MenuNumber_ptr
43C174:  LDR             R0, [R0]; MenuNumber
43C176:  LDR.W           R0, [R0,R4,LSL#2]
43C17A:  LDRB.W          R0, [R0,#0x40]
43C17E:  CMP             R0, #1
43C180:  BEQ             loc_43C194
43C182:  CBNZ            R0, loc_43C19C
43C184:  MOV             R0, R4; this
43C186:  MOVS            R1, #1; unsigned __int8
43C188:  BLX             j__ZN11CMenuSystem19DisplayStandardMenuEhh; CMenuSystem::DisplayStandardMenu(uchar,uchar)
43C18C:  B               loc_43C19C
43C18E:  LDR             R0, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43C194)
43C190:  ADD             R0, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43C192:  B               loc_43C1E6
43C194:  MOV             R0, R4; this
43C196:  MOVS            R1, #1; unsigned __int8
43C198:  BLX             j__ZN11CMenuSystem15DisplayGridMenuEhh; CMenuSystem::DisplayGridMenu(uchar,uchar)
43C19C:  LDR             R0, =(MenuNumber_ptr - 0x43C1A2)
43C19E:  ADD             R0, PC; MenuNumber_ptr
43C1A0:  LDR             R0, [R0]; MenuNumber
43C1A2:  LDR.W           R0, [R0,R5,LSL#2]
43C1A6:  LDRB.W          R0, [R0,#0x3F8]
43C1AA:  CMP             R0, #0
43C1AC:  BEQ             locret_43C27E
43C1AE:  LDR             R0, =(MenuNumber_ptr - 0x43C1B4)
43C1B0:  ADD             R0, PC; MenuNumber_ptr
43C1B2:  LDR             R0, [R0]; MenuNumber
43C1B4:  LDR.W           R0, [R0,R4,LSL#2]
43C1B8:  LDRB.W          R0, [R0,#0x40]
43C1BC:  CMP             R0, #1
43C1BE:  BEQ             loc_43C280
43C1C0:  CMP             R0, #0
43C1C2:  IT NE
43C1C4:  POPNE           {R4,R5,R7,PC}
43C1C6:  MOV             R0, R4; this
43C1C8:  POP.W           {R4,R5,R7,LR}
43C1CC:  B               _ZN11CMenuSystem17InputStandardMenuEh; CMenuSystem::InputStandardMenu(uchar)
43C1CE:  MOVS            R0, #0; this
43C1D0:  MOVS            R1, #0; unsigned __int8
43C1D2:  BLX             j__ZN11CMenuSystem15DisplayGridMenuEhh; CMenuSystem::DisplayGridMenu(uchar,uchar)
43C1D6:  LDR             R0, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43C1DC)
43C1D8:  ADD             R0, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43C1DA:  LDR             R0, [R0]; CMenuSystem::CurrentMenuInUse ...
43C1DC:  LDRB            R0, [R0]; CMenuSystem::CurrentMenuInUse
43C1DE:  CMP             R0, #1
43C1E0:  BEQ             loc_43C210
43C1E2:  LDR             R0, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43C1E8)
43C1E4:  ADD             R0, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43C1E6:  LDR             R0, [R0]; CMenuSystem::MenuInUse ...
43C1E8:  LDRB            R0, [R0,#(byte_99221D - 0x99221C)]
43C1EA:  CBZ             R0, loc_43C210
43C1EC:  LDR             R0, =(MenuNumber_ptr - 0x43C1F2)
43C1EE:  ADD             R0, PC; MenuNumber_ptr
43C1F0:  LDR             R0, [R0]; MenuNumber
43C1F2:  LDR             R0, [R0,#(dword_992224 - 0x992220)]
43C1F4:  LDRB.W          R0, [R0,#0x40]
43C1F8:  CBZ             R0, loc_43C208
43C1FA:  CMP             R0, #1
43C1FC:  BNE             loc_43C210
43C1FE:  MOVS            R0, #(stderr+1); this
43C200:  MOVS            R1, #0; unsigned __int8
43C202:  BLX             j__ZN11CMenuSystem15DisplayGridMenuEhh; CMenuSystem::DisplayGridMenu(uchar,uchar)
43C206:  B               loc_43C210
43C208:  MOVS            R0, #(stderr+1); this
43C20A:  MOVS            R1, #0; unsigned __int8
43C20C:  BLX             j__ZN11CMenuSystem19DisplayStandardMenuEhh; CMenuSystem::DisplayStandardMenu(uchar,uchar)
43C210:  LDR             R0, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43C218)
43C212:  LDR             R1, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43C21A)
43C214:  ADD             R0, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43C216:  ADD             R1, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43C218:  LDR             R0, [R0]; CMenuSystem::CurrentMenuInUse ...
43C21A:  LDR             R1, [R1]; CMenuSystem::MenuInUse ...
43C21C:  LDRSB.W         R0, [R0]; CMenuSystem::CurrentMenuInUse
43C220:  LDRB            R1, [R1,R0]
43C222:  CBZ             R1, locret_43C27E
43C224:  LDR             R1, =(MenuNumber_ptr - 0x43C22C)
43C226:  UXTB            R0, R0; this
43C228:  ADD             R1, PC; MenuNumber_ptr
43C22A:  LDR             R1, [R1]; MenuNumber
43C22C:  LDR.W           R1, [R1,R0,LSL#2]
43C230:  LDRB.W          R1, [R1,#0x40]
43C234:  CMP             R1, #1
43C236:  BEQ             loc_43C242
43C238:  CBNZ            R1, loc_43C248
43C23A:  MOVS            R1, #1; unsigned __int8
43C23C:  BLX             j__ZN11CMenuSystem19DisplayStandardMenuEhh; CMenuSystem::DisplayStandardMenu(uchar,uchar)
43C240:  B               loc_43C248
43C242:  MOVS            R1, #1; unsigned __int8
43C244:  BLX             j__ZN11CMenuSystem15DisplayGridMenuEhh; CMenuSystem::DisplayGridMenu(uchar,uchar)
43C248:  LDR             R0, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43C250)
43C24A:  LDR             R1, =(MenuNumber_ptr - 0x43C252)
43C24C:  ADD             R0, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43C24E:  ADD             R1, PC; MenuNumber_ptr
43C250:  LDR             R0, [R0]; CMenuSystem::CurrentMenuInUse ...
43C252:  LDR             R1, [R1]; MenuNumber
43C254:  LDRSB.W         R0, [R0]; CMenuSystem::CurrentMenuInUse
43C258:  LDR.W           R1, [R1,R0,LSL#2]
43C25C:  LDRB.W          R1, [R1,#0x3F8]
43C260:  CBZ             R1, locret_43C27E
43C262:  LDR             R1, =(MenuNumber_ptr - 0x43C26A)
43C264:  UXTB            R0, R0; this
43C266:  ADD             R1, PC; MenuNumber_ptr
43C268:  LDR             R1, [R1]; MenuNumber
43C26A:  LDR.W           R1, [R1,R0,LSL#2]
43C26E:  LDRB.W          R1, [R1,#0x40]; unsigned __int8
43C272:  CMP             R1, #1
43C274:  BEQ             loc_43C288
43C276:  CBNZ            R1, locret_43C27E
43C278:  POP.W           {R4,R5,R7,LR}
43C27C:  B               _ZN11CMenuSystem17InputStandardMenuEh; CMenuSystem::InputStandardMenu(uchar)
43C27E:  POP             {R4,R5,R7,PC}
43C280:  MOV             R0, R4; this
43C282:  POP.W           {R4,R5,R7,LR}
43C286:  B               _ZN11CMenuSystem13InputGridMenuEh; CMenuSystem::InputGridMenu(uchar)
43C288:  POP.W           {R4,R5,R7,LR}
43C28C:  B               _ZN11CMenuSystem13InputGridMenuEh; CMenuSystem::InputGridMenu(uchar)
