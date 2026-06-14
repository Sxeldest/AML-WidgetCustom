; =========================================================
; Game Engine Function: sub_123CA8
; Address            : 0x123CA8 - 0x123CEC
; =========================================================

123CA8:  PUSH            {R4,R5,R7,LR}
123CAA:  ADD             R7, SP, #8
123CAC:  SUB             SP, SP, #0x18
123CAE:  MOV             R4, R0
123CB0:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP13_VEHICLE_TYPEEEC1I15AutomobileZR350EEMT_FiS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x123CBC); `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1}>,int ()(_VEHICLE_TYPE *)> ...
123CB2:  LDRD.W          R2, R3, [R1]
123CB6:  MOV             R5, SP
123CB8:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1}>,int ()(_VEHICLE_TYPE *)>
123CBA:  LDR             R1, [R1,#8]
123CBC:  ADDS            R0, #8
123CBE:  STRD.W          R1, R5, [SP,#0x20+var_14]
123CC2:  STR             R0, [SP,#0x20+var_20]
123CC4:  MOV             R0, R5
123CC6:  MOV             R1, R4
123CC8:  STRD.W          R2, R3, [SP,#0x20+var_1C]
123CCC:  BL              sub_123D7E
123CD0:  LDR             R0, [SP,#0x20+var_10]
123CD2:  CMP             R5, R0
123CD4:  BEQ             loc_123CDC
123CD6:  CBZ             R0, loc_123CE6
123CD8:  MOVS            R1, #5
123CDA:  B               loc_123CDE
123CDC:  MOVS            R1, #4
123CDE:  LDR             R2, [R0]
123CE0:  LDR.W           R1, [R2,R1,LSL#2]
123CE4:  BLX             R1
123CE6:  MOV             R0, R4
123CE8:  ADD             SP, SP, #0x18
123CEA:  POP             {R4,R5,R7,PC}
