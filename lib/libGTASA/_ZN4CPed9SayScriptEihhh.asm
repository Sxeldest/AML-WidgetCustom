; =========================================================
; Game Engine Function: _ZN4CPed9SayScriptEihhh
; Address            : 0x4AC92C - 0x4AC94C
; =========================================================

4AC92C:  PUSH            {R7,LR}
4AC92E:  MOV             R7, SP
4AC930:  SUB             SP, SP, #8
4AC932:  MOV             R12, R2
4AC934:  MOV             R2, R1; int
4AC936:  LDR             R1, [R7,#8]
4AC938:  ADD.W           R0, R0, #0x298; this
4AC93C:  STRD.W          R3, R1, [SP,#0x10+var_10]; unsigned __int8
4AC940:  MOVS            R1, #0x35 ; '5'; int
4AC942:  MOV             R3, R12; unsigned __int8
4AC944:  BLX             j__ZN23CAEPedSpeechAudioEntity17AddScriptSayEventEiihhh; CAEPedSpeechAudioEntity::AddScriptSayEvent(int,int,uchar,uchar,uchar)
4AC948:  ADD             SP, SP, #8
4AC94A:  POP             {R7,PC}
