; =========================================================
; Game Engine Function: _ZN29CTaskComplexWaitForDryWeatherC2Ev
; Address            : 0x4EE430 - 0x4EE444
; =========================================================

4EE430:  PUSH            {R7,LR}; Alternative name is 'CTaskComplexWaitForDryWeather::CTaskComplexWaitForDryWeather(void)'
4EE432:  MOV             R7, SP
4EE434:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EE438:  LDR             R1, =(_ZTV29CTaskComplexWaitForDryWeather_ptr - 0x4EE43E)
4EE43A:  ADD             R1, PC; _ZTV29CTaskComplexWaitForDryWeather_ptr
4EE43C:  LDR             R1, [R1]; `vtable for'CTaskComplexWaitForDryWeather ...
4EE43E:  ADDS            R1, #8
4EE440:  STR             R1, [R0]
4EE442:  POP             {R7,PC}
