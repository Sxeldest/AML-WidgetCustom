; =========================================================
; Game Engine Function: _ZN8CCarCtrl37SlowCarOnRailsDownForTrafficAndLightsEP8CVehicle
; Address            : 0x2ED12C - 0x2ED1F2
; =========================================================

2ED12C:  PUSH            {R4,R6,R7,LR}
2ED12E:  ADD             R7, SP, #8
2ED130:  MOV             R4, R0
2ED132:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x2ED13A)
2ED134:  LDRH            R1, [R4,#0x24]
2ED136:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
2ED138:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
2ED13A:  LDR             R0, [R0]; CTimer::m_FrameCounter
2ED13C:  ADD             R0, R1
2ED13E:  LSLS            R0, R0, #0x1E
2ED140:  BEQ             loc_2ED148
2ED142:  VLDR            S0, [R4,#0x3D0]
2ED146:  B               loc_2ED176
2ED148:  MOV             R0, R4; this
2ED14A:  MOVS            R1, #0; CVehicle *
2ED14C:  BLX             j__ZN14CTrafficLights21ShouldCarStopForLightEP8CVehicleb; CTrafficLights::ShouldCarStopForLight(CVehicle *,bool)
2ED150:  CBNZ            R0, loc_2ED15C
2ED152:  MOV             R0, R4; this
2ED154:  BLX             j__ZN14CTrafficLights22ShouldCarStopForBridgeEP8CVehicle; CTrafficLights::ShouldCarStopForBridge(CVehicle *)
2ED158:  CMP             R0, #1
2ED15A:  BNE             loc_2ED168
2ED15C:  MOV             R0, R4; this
2ED15E:  BLX             j__ZN6CCarAI18CarHasReasonToStopEP8CVehicle; CCarAI::CarHasReasonToStop(CVehicle *)
2ED162:  VLDR            S0, =0.0
2ED166:  B               loc_2ED172
2ED168:  MOV             R0, R4; this
2ED16A:  BLX             j__ZN8CCarCtrl35FindMaximumSpeedForThisCarInTrafficEP8CVehicle; CCarCtrl::FindMaximumSpeedForThisCarInTraffic(CVehicle *)
2ED16E:  VMOV            S0, R0
2ED172:  VSTR            S0, [R4,#0x3D0]
2ED176:  VLDR            S2, [R4,#0x3CC]
2ED17A:  ADD.W           R0, R4, #0x394; this
2ED17E:  VCMPE.F32       S0, S2
2ED182:  VMRS            APSR_nzcv, FPSCR
2ED186:  BGE             loc_2ED194
2ED188:  VCMP.F32        S2, #0.0
2ED18C:  VMRS            APSR_nzcv, FPSCR
2ED190:  BNE             loc_2ED1BE
2ED192:  POP             {R4,R6,R7,PC}
2ED194:  IT LE
2ED196:  POPLE           {R4,R6,R7,PC}
2ED198:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x2ED1A2)
2ED19A:  VLDR            S4, =0.05
2ED19E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
2ED1A0:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
2ED1A2:  VLDR            S6, [R1]
2ED1A6:  VMUL.F32        S4, S6, S4
2ED1AA:  VADD.F32        S2, S2, S4
2ED1AE:  VMIN.F32        D0, D1, D0
2ED1B2:  VMOV            R1, S0; float
2ED1B6:  POP.W           {R4,R6,R7,LR}
2ED1BA:  B.W             j_j__ZN10CAutoPilot11ModifySpeedEf; j_CAutoPilot::ModifySpeed(float)
2ED1BE:  VLDR            S4, =0.1
2ED1C2:  VCMPE.F32       S2, S4
2ED1C6:  VMRS            APSR_nzcv, FPSCR
2ED1CA:  BGE             loc_2ED1D6
2ED1CC:  MOVS            R1, #0; float
2ED1CE:  POP.W           {R4,R6,R7,LR}
2ED1D2:  B.W             j_j__ZN10CAutoPilot11ModifySpeedEf; j_CAutoPilot::ModifySpeed(float)
2ED1D6:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x2ED1E0)
2ED1D8:  VLDR            S4, =-0.7
2ED1DC:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
2ED1DE:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
2ED1E0:  VLDR            S6, [R1]
2ED1E4:  VMUL.F32        S4, S6, S4
2ED1E8:  VADD.F32        S2, S2, S4
2ED1EC:  VMAX.F32        D0, D1, D0
2ED1F0:  B               loc_2ED1B2
