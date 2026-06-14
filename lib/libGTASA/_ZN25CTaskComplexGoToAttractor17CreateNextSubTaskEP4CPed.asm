; =========================================================
; Game Engine Function: _ZN25CTaskComplexGoToAttractor17CreateNextSubTaskEP4CPed
; Address            : 0x5245AC - 0x5245E2
; =========================================================

5245AC:  PUSH            {R4,R5,R7,LR}
5245AE:  ADD             R7, SP, #8
5245B0:  MOV             R4, R1
5245B2:  MOV             R5, R0
5245B4:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
5245B8:  LDR             R2, [R5,#0xC]; CPedAttractor *
5245BA:  MOV             R1, R4; CPed *
5245BC:  BLX             j__ZN20CPedAttractorManager16BroadcastArrivalEP4CPedP13CPedAttractor; CPedAttractorManager::BroadcastArrival(CPed *,CPedAttractor *)
5245C0:  LDRB.W          R0, [R4,#0x48E]
5245C4:  LSLS            R0, R0, #0x1A
5245C6:  BPL             loc_5245DE
5245C8:  LDR             R0, [R5,#0xC]; this
5245CA:  BLX             j__ZNK13CPedAttractor14GetHeadOfQueueEv; CPedAttractor::GetHeadOfQueue(void)
5245CE:  CMP             R0, R4
5245D0:  ITTTT NE
5245D2:  ADDWNE          R0, R4, #0x484
5245D6:  LDRNE           R1, [R0,#8]
5245D8:  BICNE.W         R1, R1, #0x200000
5245DC:  STRNE           R1, [R0,#8]
5245DE:  MOVS            R0, #0
5245E0:  POP             {R4,R5,R7,PC}
