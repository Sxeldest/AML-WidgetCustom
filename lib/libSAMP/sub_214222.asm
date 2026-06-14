; =========================================================
; Game Engine Function: sub_214222
; Address            : 0x214222 - 0x214268
; =========================================================

214222:  PUSH            {R4-R7,LR}
214224:  ADD             R7, SP, #0xC
214226:  PUSH.W          {R8-R10}; char *
21422A:  LDRD.W          R9, R8, [R7,#arg_0]
21422E:  SUBS            R4, R2, R1
214230:  MOV             R5, R1
214232:  MOV             R10, R0
214234:  CMP             R4, #0x13
214236:  BGT             loc_21424E
214238:  MOV             R0, R9
21423A:  MOV             R1, R8
21423C:  MOV             R6, R2
21423E:  BL              sub_214268
214242:  CMP             R0, R4
214244:  BLE             loc_21424E
214246:  MOVS            R0, #0x4B ; 'K'
214248:  STR.W           R6, [R10]
21424C:  B               loc_21425E
21424E:  MOV             R0, R9; this
214250:  MOV             R1, R8
214252:  MOV             R2, R5; unsigned __int64
214254:  BLX             j__ZNSt6__ndk16__itoa8__u64toaEyPc; std::__itoa::__u64toa(ulong long,char *)
214258:  STR.W           R0, [R10]
21425C:  MOVS            R0, #0
21425E:  STR.W           R0, [R10,#4]
214262:  POP.W           {R8-R10}
214266:  POP             {R4-R7,PC}
