; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity22StopGenericEngineSoundEs
; Address            : 0x3B8230 - 0x3B8256
; =========================================================

3B8230:  PUSH            {R4,R5,R7,LR}
3B8232:  ADD             R7, SP, #8
3B8234:  ADD.W           R4, R0, R1,LSL#3
3B8238:  LDR.W           R0, [R4,#0xE8]!; this
3B823C:  CMP             R0, #0
3B823E:  IT EQ
3B8240:  POPEQ           {R4,R5,R7,PC}
3B8242:  MOVS            R1, #4; unsigned __int16
3B8244:  MOVS            R2, #0; unsigned __int16
3B8246:  MOVS            R5, #0
3B8248:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B824C:  LDR             R0, [R4]; this
3B824E:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B8252:  STR             R5, [R4]
3B8254:  POP             {R4,R5,R7,PC}
