import alut;
import std.stdio;

void main()
{
	alutInit(null,null);
	ALuint buffer = alutCreateBufferHelloWorld();
	ALuint source; 
	alGenSources(1, &source); 
	alSourcei(source, AL_BUFFER, buffer);
	alSourcePlay(source);
	getchar();
	alutExit();
}
