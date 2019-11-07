##Ahmad Tuflihun | 3201816084 | Semester 2B

A= [40,30,50,60];
process = 0;

print(A);

for i in range(len(A)-1,-1,-1):
	swapped = False;
	for j in range(0,i):
		process= process + 1;
		if(A[j]>A[j+1]):
			A[j],A[j+1]=A[j+1],A[j];
			swapped = True;
	if(swapped==False):
		break;

print("Process:",process);
print(A);
input();
