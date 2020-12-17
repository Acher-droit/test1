.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitWord:DWORD
.data
Rval  SDWORD  ?
Xval  SDWORD  26
Yval  SDWORD  30
Zval  SDWORD  40
 
.code
sayno PROC
       mov   ax,1000h		;ax 赋值 4096
       inc   ax		;ax+1 = 4097
       dec   ax		;ax-1 = 4096
 
	   mov   eax,Xval	;将Xval赋给 eax ,eax = 26
	   neg   eax		;将eax求补
	   mov   ebx,Yval	;将Yval赋值给ebx
	   sub   ebx,Zval	;将ebx减去Yval
	   add   eax,ebx	;ebx+eax
	   mov   Rval,eax	;将eax赋值给Rval
 
	   mov   cx,1		;将1赋值给cx
	   sub   cx,1		;cx-1
	   mov   ax,0FFFFh	;ax = 65500
	   inc   ax			;ax + 1,65535
 
	   mov   cx,0		;将0赋值给cx
	   sub   cx,1		;cx - 1
	   mov   ax,7FFFh	;ax = 32767
	   add   ax,2		;ax + 2
 
	   mov   al,0FFh	;al = 33023
	   add   al,1	;   
 
	   mov   al,+127	;4.'\x1'
	   add   al,1		;255
	   mov   al,-128	;\0
	   sub   al,1		;127
INVOKE ExitProcess,0
sayno ENDP
END sayno
