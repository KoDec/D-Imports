//OpenAL for D Interface by KoDec/2012
//
//alc.di - OpenAL Context Import

module alc;
public import altypes;

extern (C)
{
/*
 * Context Management
 */
ALCcontext* alcCreateContext(ALCdevice *device, in ALCint* attrlist);

ALCboolean alcMakeContextCurrent(ALCcontext *context );

void alcProcessContext(ALCcontext *context);

void alcSuspendContext(ALCcontext *context);

void alcDestroyContext(ALCcontext *context);

ALCcontext* alcGetCurrentContext();

ALCdevice* alcGetContextsDevice(ALCcontext *context);


/*
 * Device Management
 */
ALCdevice* alcOpenDevice(in ALCchar *devicename);

ALCboolean alcCloseDevice(ALCdevice *device);


/*
 * Error support.
 * Obtain the most recent Context error
 */
ALCenum alcGetError(ALCdevice *device);


/* 
 * Extension support.
 * Query for the presence of an extension, and obtain any appropriate
 * function pointers and enum values.
 */
ALCboolean  alcIsExtensionPresent(ALCdevice *device, in ALCchar *extname);

void* alcGetProcAddress(ALCdevice *device, in ALCchar *funcname);

ALCenum alcGetEnumValue(ALCdevice *device, in ALCchar *enumname);


/*
 * Query functions
 */
ALCchar* alcGetString(ALCdevice *device, ALCenum param);

void alcGetIntegerv(ALCdevice *device, ALCenum param, ALCsizei size, ALCint *data);


/*
 * Capture functions
 */
ALCdevice* alcCaptureOpenDevice(in ALCchar *devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize);

ALCboolean alcCaptureCloseDevice(ALCdevice *device);

void alcCaptureStart(ALCdevice *device);

void alcCaptureStop(ALCdevice *device);

void alcCaptureSamples(ALCdevice *device, ALCvoid *buffer, ALCsizei samples);

/*
 * Pointer-to-function types, useful for dynamically getting ALC entry points.
 */
ALCcontext* function(ALCdevice*, in ALCint*) LPALCCREATECONTEXT;
ALCboolean function(ALCcontext*) LPALCMAKECONTEXTCURRENT;
void function(ALCcontext*) LPALCPROCESSCONTEXT;
void function(ALCcontext*) LPALCSUSPENDCONTEXT;
void function(ALCcontext*) LPALCDESTROYCONTEXT;
ALCcontext* function() LPALCGETCURRENTCONTEXT;
ALCdevice* function(ALCcontext*) LPALCGETCONTEXTSDEVICE;
ALCdevice* function(in ALCchar*) LPALCOPENDEVICE;
ALCboolean function(ALCdevice*)  LPALCCLOSEDEVICE;
ALCenum function(ALCdevice*) LPALCGETERROR;
ALCboolean function(ALCdevice*, in ALCchar*) LPALCISEXTENSIONPRESENT;
void* function(ALCdevice*, in ALCchar*) LPALCGETPROCADDRESS;
ALCenum function(ALCdevice*, in ALCchar*) LPALCGETENUMVALUE;
const ALCchar* function(ALCdevice*, ALCenum) LPALCGETSTRING;
void function(ALCdevice*, ALCenum, ALCsizei, ALCint*) LPALCGETINTEGERV;
ALCdevice* function(in ALCchar*, ALCuint, ALCenum, ALCsizei) LPALCCAPTUREOPENDEVICE;
ALCboolean function(ALCdevice*) LPALCCAPTURECLOSEDEVICE;
void function(ALCdevice*) LPALCCAPTURESTART;
void function(ALCdevice*) LPALCCAPTURESTOP;
void function(ALCdevice*, ALCvoid*, ALCsizei) LPALCCAPTURESAMPLES;
}
