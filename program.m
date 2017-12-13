function varargout = program(varargin)
% program MATLAB code for program.fig
%      program, by itself, creates a new program or raises the existing
%      singleton*.
%
%      H = program returns the handle to a new program or the handle to
%      the existing singleton*.
%
%      program('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in program.M with the given input arguments.
%
%      program('Property','Value',...) creates a new program or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before program_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to program_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help program

% Last Modified by GUIDE v2.5 23-Nov-2017 15:05:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @program_OpeningFcn, ...
                   'gui_OutputFcn',  @program_OutputFcn, ...
                   'gui_LayoutFcn',  @program_LayoutFcn, ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before program is made visible.
function program_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to program (see VARARGIN)

% Choose default command line output for program
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes program wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = program_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtCompFolder_Callback(hObject, eventdata, handles)
% hObject    handle to txtCompFolder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtCompFolder as text
%        str2double(get(hObject,'String')) returns contents of txtCompFolder as a double


% --- Executes during object creation, after setting all properties.
function txtCompFolder_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtCompFolder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    [filename, pathname] = uigetfile('*.jpg','Select an image');
    set(handles.txtCompSrc, 'string', strcat(pathname, filename));



function txtCompSrc_Callback(hObject, eventdata, handles)
% hObject    handle to txtCompSrc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtCompSrc as text
%        str2double(get(hObject,'String')) returns contents of txtCompSrc as a double


% --- Executes during object creation, after setting all properties.
function txtCompSrc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtCompSrc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    dname = uigetdir('C:\');
    set(handles.txtCompFolder, 'string', dname);


function txtTrainNatural_Callback(hObject, eventdata, handles)
% hObject    handle to txtTrainNatural (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTrainNatural as text
%        str2double(get(hObject,'String')) returns contents of txtTrainNatural as a double


% --- Executes during object creation, after setting all properties.
function txtTrainNatural_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTrainNatural (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    dname = uigetdir('C:\');
    set(handles.txtTrainNatural, 'string', dname);



function txtTrainManmade_Callback(hObject, eventdata, handles)
% hObject    handle to txtTrainManmade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTrainManmade as text
%        str2double(get(hObject,'String')) returns contents of txtTrainManmade as a double


% --- Executes during object creation, after setting all properties.
function txtTrainManmade_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTrainManmade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    dname = uigetdir('C:\');
    set(handles.txtTrainManmade, 'string', dname);


function txtClassifySrc_Callback(hObject, eventdata, handles)
% hObject    handle to txtClassifySrc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtClassifySrc as text
%        str2double(get(hObject,'String')) returns contents of txtClassifySrc as a double


% --- Executes during object creation, after setting all properties.
function txtClassifySrc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtClassifySrc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    [filename, pathname] = uigetfile('*.jpg','Select an image');
    set(handles.txtClassifySrc, 'string', strcat(pathname, filename));




function txtClassifyNatural_Callback(hObject, eventdata, handles)
% hObject    handle to txtClassifyNatural (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtClassifyNatural as text
%        str2double(get(hObject,'String')) returns contents of txtClassifyNatural as a double


% --- Executes during object creation, after setting all properties.
function txtClassifyNatural_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtClassifyNatural (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtClassifyManmade_Callback(hObject, eventdata, handles)
% hObject    handle to txtClassifyManmade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtClassifyManmade as text
%        str2double(get(hObject,'String')) returns contents of txtClassifyManmade as a double


% --- Executes during object creation, after setting all properties.
function txtClassifyManmade_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtClassifyManmade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    dname = uigetdir('C:\');
    set(handles.txtClassifyNatural, 'string', dname);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    dname = uigetdir('C:\');
    set(handles.txtClassifyManmade, 'string', dname);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    image = get(handles.txtCompSrc, 'string');
    folder = get(handles.txtCompFolder, 'string');
    width  = get(handles.txtWidth, 'string');
    height = get(handles.txtHeight, 'string');
    tile = get(handles.txtTile, 'string');
    display = get(handles.chkShowComposite, 'value');

    composite = generate_composite_image(imread(image), dir(strcat(folder, '\*.jpg')), str2double(width), str2double(height), str2double(tile), logical(display));
    figure
    imshow(composite);
    
% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    image = get(handles.txtClassifySrc, 'string');
    naturalfolder = get(handles.txtClassifyNatural, 'string');
    manmadefolder = get(handles.txtClassifyManmade, 'string');
    width  = get(handles.txtWidth, 'string');
    height = get(handles.txtHeight, 'string');
    tile = get(handles.txtTile, 'string');
    display = get(handles.chkShowComposite, 'value');
    
    composite = partC(image, strcat(naturalfolder, '\*.jpg'), strcat(manmadefolder, '\*.jpg'), str2double(width), str2double(height), str2double(tile), logical(display));
    figure
    imshow(composite);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    folderNatural = get(handles.txtTrainNatural, 'string');
    folderManmade = get(handles.txtTrainManmade, 'string');
    train(strcat(folderNatural, '\*.jpg'), strcat(folderManmade, '\*.jpg'), 27, 0);



% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function txtWidth_Callback(hObject, eventdata, handles)
% hObject    handle to txtWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtWidth as text
%        str2double(get(hObject,'String')) returns contents of txtWidth as a double


% --- Executes during object creation, after setting all properties.
function txtWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtHeight_Callback(hObject, eventdata, handles)
% hObject    handle to txtHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtHeight as text
%        str2double(get(hObject,'String')) returns contents of txtHeight as a double


% --- Executes during object creation, after setting all properties.
function txtHeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTile_Callback(hObject, eventdata, handles)
% hObject    handle to txtTile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTile as text
%        str2double(get(hObject,'String')) returns contents of txtTile as a double


% --- Executes during object creation, after setting all properties.
function txtTile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in chkShowComposite.
function chkShowComposite_Callback(hObject, eventdata, handles)
% hObject    handle to chkShowComposite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkShowComposite


% --- Creates and returns a handle to the GUI figure. 
function h1 = program_LayoutFcn(policy)
% policy - create a new figure or use a singleton. 'new' or 'reuse'.

persistent hsingleton;
if strcmpi(policy, 'reuse') & ishandle(hsingleton)
    h1 = hsingleton;
    return;
end

appdata = [];
appdata.GUIDEOptions = struct(...
    'active_h', -1, ...
    'taginfo', struct(...
    'figure', 2, ...
    'text', 7, ...
    'slider', 2, ...
    'edit', 11, ...
    'pushbutton', 12, ...
    'checkbox', 2), ...
    'override', 0, ...
    'release', [], ...
    'resize', 'none', ...
    'accessibility', 'callback', ...
    'mfile', 1, ...
    'callbacks', 1, ...
    'singleton', 1, ...
    'syscolorfig', 1, ...
    'blocking', 0, ...
    'lastSavedFile', 'U:\MatlabFinal\program.m', ...
    'lastFilename', 'U:\MatlabFinal\UI.fig');
appdata.lastValidTag = 'figure1';
appdata.GUIDELayoutEditor = [];
appdata.initTags = struct(...
    'handle', [], ...
    'tag', 'figure1');

h1 = figure(...
'PaperUnits','inches',...
'Units','characters',...
'Position',[135.8 52.6153846153846 88.4 31.7692307692308],...
'Visible',get(0,'defaultfigureVisible'),...
'Color',get(0,'defaultfigureColor'),...
'IntegerHandle','off',...
'MenuBar','none',...
'Name','UI',...
'NumberTitle','off',...
'Tag','figure1',...
'Resize','off',...
'PaperPosition',get(0,'defaultfigurePaperPosition'),...
'PaperSize',[8.5 11],...
'PaperSizeMode',get(0,'defaultfigurePaperSizeMode'),...
'PaperType','usletter',...
'PaperTypeMode',get(0,'defaultfigurePaperTypeMode'),...
'PaperUnitsMode',get(0,'defaultfigurePaperUnitsMode'),...
'ScreenPixelsPerInchMode','manual',...
'HandleVisibility','callback',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text2';

h2 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Generate Composite Image',...
'Style','text',...
'Position',[3.8 24 80.2 1.53846153846154],...
'Children',[],...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'Tag','text2');

appdata = [];
appdata.lastValidTag = 'txtCompFolder';

h3 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Folder of Images',...
'Style','edit',...
'Position',[3.8 19.2307692307692 40.2 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtCompFolder_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Enable','off',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtCompFolder_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','txtCompFolder');

appdata = [];
appdata.lastValidTag = 'pushbutton1';

h4 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Browse',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[45.8 21.3846153846154 18.2 1.84615384615385],...
'Callback',@(hObject,eventdata)program('pushbutton1_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'Tag','pushbutton1');

appdata = [];
appdata.lastValidTag = 'txtCompSrc';

h5 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Source Image',...
'Style','edit',...
'Position',[3.8 21.5384615384615 40.4 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtCompSrc_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Enable','off',...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtCompSrc_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','txtCompSrc',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'pushbutton2';

h6 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Browse',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[45.8 19.0769230769231 18.2 1.84615384615385],...
'Callback',@(hObject,eventdata)program('pushbutton2_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','pushbutton2',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'text4';

h7 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Train Natural Classifier',...
'Style','text',...
'Position',[3.8 16.3076923076923 80.2 1.53846153846154],...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','text4');

appdata = [];
appdata.lastValidTag = 'txtTrainNatural';

h8 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Folder of Natural Images',...
'Style','edit',...
'Position',[3.8 13.8461538461538 40.4 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtTrainNatural_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Enable','off',...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtTrainNatural_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','txtTrainNatural',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'pushbutton3';

h9 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Browse',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[45.8 13.6923076923077 18.2 1.84615384615385],...
'Callback',@(hObject,eventdata)program('pushbutton3_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','pushbutton3',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'txtTrainManmade';

h10 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'HorizontalAlignment',get(0,'defaultuicontrolHorizontalAlignment'),...
'String','Folder of Manmade Images',...
'Style','edit',...
'Position',[3.8 11.5384615384615 40.4 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtTrainManmade_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Enable','off',...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtTrainManmade_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','txtTrainManmade',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'pushbutton4';

h11 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Browse',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[45.8 11.3846153846154 18.2 1.84615384615385],...
'Callback',@(hObject,eventdata)program('pushbutton4_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','pushbutton4',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'text6';

h12 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Classify Image & Generate Composite Image',...
'Style','text',...
'Position',[3.8 8.61538461538462 80.4 1.53846153846154],...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','text6');

appdata = [];
appdata.lastValidTag = 'txtClassifySrc';

h13 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Source Image',...
'Style','edit',...
'Position',[3.8 6.15384615384615 40.4 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtClassifySrc_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Enable','off',...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtClassifySrc_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','txtClassifySrc',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'pushbutton5';

h14 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Browse',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[45.8 6 18.2 1.84615384615385],...
'Callback',@(hObject,eventdata)program('pushbutton5_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','pushbutton5',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'txtClassifyNatural';

h15 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Folder of Natural Images',...
'Style','edit',...
'Position',[3.8 3.84615384615385 40.4 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtClassifyNatural_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Enable','off',...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtClassifyNatural_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','txtClassifyNatural',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'txtClassifyManmade';

h16 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Folder of Manmade Images',...
'Style','edit',...
'Position',[3.8 1.53846153846154 40.4 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtClassifyManmade_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Enable','off',...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtClassifyManmade_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','txtClassifyManmade',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'pushbutton6';

h17 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Browse',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[45.8 3.69230769230769 18.2 1.84615384615385],...
'Callback',@(hObject,eventdata)program('pushbutton6_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','pushbutton6',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'pushbutton7';

h18 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Browse',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[45.8 1.38461538461538 18.2 1.84615384615385],...
'Callback',@(hObject,eventdata)program('pushbutton7_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','pushbutton7',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'pushbutton8';

h19 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Generate',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[65.8 19.3076923076923 18.2 3.92307692307692],...
'Callback',@(hObject,eventdata)program('pushbutton8_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','pushbutton8',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'pushbutton9';

h20 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Generate',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[65.8 1.53846153846154 18.2 6.30769230769231],...
'Callback',@(hObject,eventdata)program('pushbutton9_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','pushbutton9',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'pushbutton10';

h21 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Train',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[65.8 11.6153846153846 18.2 3.92307692307692],...
'Callback',@(hObject,eventdata)program('pushbutton10_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','pushbutton10',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'txtWidth';

h22 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Image Width',...
'Style','edit',...
'Position',[3.8 29.2307692307692 24.2 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtWidth_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtWidth_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','txtWidth');

appdata = [];
appdata.lastValidTag = 'txtHeight';

h23 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Image Height',...
'Style','edit',...
'Position',[31.8 29.2307692307692 24.2 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtHeight_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtHeight_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','txtHeight',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'txtTile';

h24 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Tile Size',...
'Style','edit',...
'Position',[59.8 29.2307692307692 24 1.69230769230769],...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)program('txtTile_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'ButtonDownFcn',blanks(0),...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)program('txtTile_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'DeleteFcn',blanks(0),...
'Tag','txtTile',...
'KeyPressFcn',blanks(0));

appdata = [];
appdata.lastValidTag = 'chkShowComposite';

h25 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Show Composite Generation',...
'Style','checkbox',...
'Position',[3.8 26.8461538461538 36.2 1.76923076923077],...
'Callback',@(hObject,eventdata)program('chkShowComposite_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Tag','chkShowComposite',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );


hsingleton = h1;


% --- Set application data first then calling the CreateFcn. 
function local_CreateFcn(hObject, eventdata, createfcn, appdata)

if ~isempty(appdata)
   names = fieldnames(appdata);
   for i=1:length(names)
       name = char(names(i));
       setappdata(hObject, name, getfield(appdata,name));
   end
end

if ~isempty(createfcn)
   if isa(createfcn,'function_handle')
       createfcn(hObject, eventdata);
   else
       eval(createfcn);
   end
end


% --- Handles default GUIDE GUI creation and callback dispatch
function varargout = gui_mainfcn(gui_State, varargin)

gui_StateFields =  {'gui_Name'
    'gui_Singleton'
    'gui_OpeningFcn'
    'gui_OutputFcn'
    'gui_LayoutFcn'
    'gui_Callback'};
gui_Mfile = '';
for i=1:length(gui_StateFields)
    if ~isfield(gui_State, gui_StateFields{i})
        error(message('MATLAB:guide:StateFieldNotFound', gui_StateFields{ i }, gui_Mfile));
    elseif isequal(gui_StateFields{i}, 'gui_Name')
        gui_Mfile = [gui_State.(gui_StateFields{i}), '.m'];
    end
end

numargin = length(varargin);

if numargin == 0
    % program
    % create the GUI only if we are not in the process of loading it
    % already
    gui_Create = true;
elseif local_isInvokeActiveXCallback(gui_State, varargin{:})
    % program(ACTIVEX,...)
    vin{1} = gui_State.gui_Name;
    vin{2} = [get(varargin{1}.Peer, 'Tag'), '_', varargin{end}];
    vin{3} = varargin{1};
    vin{4} = varargin{end-1};
    vin{5} = guidata(varargin{1}.Peer);
    feval(vin{:});
    return;
elseif local_isInvokeHGCallback(gui_State, varargin{:})
    % program('CALLBACK',hObject,eventData,handles,...)
    gui_Create = false;
else
    % program(...)
    % create the GUI and hand varargin to the openingfcn
    gui_Create = true;
end

if ~gui_Create
    % In design time, we need to mark all components possibly created in
    % the coming callback evaluation as non-serializable. This way, they
    % will not be brought into GUIDE and not be saved in the figure file
    % when running/saving the GUI from GUIDE.
    designEval = false;
    if (numargin>1 && ishghandle(varargin{2}))
        fig = varargin{2};
        while ~isempty(fig) && ~ishghandle(fig,'figure')
            fig = get(fig,'parent');
        end
        
        designEval = isappdata(0,'CreatingGUIDEFigure') || (isscalar(fig)&&isprop(fig,'GUIDEFigure'));
    end
        
    if designEval
        beforeChildren = findall(fig);
    end
    
    % evaluate the callback now
    varargin{1} = gui_State.gui_Callback;
    if nargout
        [varargout{1:nargout}] = feval(varargin{:});
    else       
        feval(varargin{:});
    end
    
    % Set serializable of objects created in the above callback to off in
    % design time. Need to check whether figure handle is still valid in
    % case the figure is deleted during the callback dispatching.
    if designEval && ishghandle(fig)
        set(setdiff(findall(fig),beforeChildren), 'Serializable','off');
    end
else
    if gui_State.gui_Singleton
        gui_SingletonOpt = 'reuse';
    else
        gui_SingletonOpt = 'new';
    end

    % Check user passing 'visible' P/V pair first so that its value can be
    % used by oepnfig to prevent flickering
    gui_Visible = 'auto';
    gui_VisibleInput = '';
    for index=1:2:length(varargin)
        if length(varargin) == index || ~ischar(varargin{index})
            break;
        end

        % Recognize 'visible' P/V pair
        len1 = min(length('visible'),length(varargin{index}));
        len2 = min(length('off'),length(varargin{index+1}));
        if ischar(varargin{index+1}) && strncmpi(varargin{index},'visible',len1) && len2 > 1
            if strncmpi(varargin{index+1},'off',len2)
                gui_Visible = 'invisible';
                gui_VisibleInput = 'off';
            elseif strncmpi(varargin{index+1},'on',len2)
                gui_Visible = 'visible';
                gui_VisibleInput = 'on';
            end
        end
    end
    
    % Open fig file with stored settings.  Note: This executes all component
    % specific CreateFunctions with an empty HANDLES structure.

    
    % Do feval on layout code in m-file if it exists
    gprogramed = ~isempty(gui_State.gui_LayoutFcn);
    % this application data is used to indicate the running mode of a GUIDE
    % GUI to distinguish it from the design mode of the GUI in GUIDE. it is
    % only used by actxproxy at this time.   
    setappdata(0,genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]),1);
    if gprogramed
        gui_hFigure = feval(gui_State.gui_LayoutFcn, gui_SingletonOpt);

        % make figure invisible here so that the visibility of figure is
        % consistent in OpeningFcn in the exported GUI case
        if isempty(gui_VisibleInput)
            gui_VisibleInput = get(gui_hFigure,'Visible');
        end
        set(gui_hFigure,'Visible','off')

        % openfig (called by local_openfig below) does this for guis without
        % the LayoutFcn. Be sure to do it here so guis show up on screen.
        movegui(gui_hFigure,'onscreen');
    else
        gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt, gui_Visible);
        % If the figure has InGUIInitialization it was not completely created
        % on the last pass.  Delete this handle and try again.
        if isappdata(gui_hFigure, 'InGUIInitialization')
            delete(gui_hFigure);
            gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt, gui_Visible);
        end
    end
    if isappdata(0, genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]))
        rmappdata(0,genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]));
    end

    % Set flag to indicate starting GUI initialization
    setappdata(gui_hFigure,'InGUIInitialization',1);

    % Fetch GUIDE Application options
    gui_Options = getappdata(gui_hFigure,'GUIDEOptions');
    % Singleton setting in the GUI MATLAB code file takes priority if different
    gui_Options.singleton = gui_State.gui_Singleton;

    if ~isappdata(gui_hFigure,'GUIOnScreen')
        % Adjust background color
        if gui_Options.syscolorfig
            set(gui_hFigure,'Color', get(0,'DefaultUicontrolBackgroundColor'));
        end

        % Generate HANDLES structure and store with GUIDATA. If there is
        % user set GUI data already, keep that also.
        data = guidata(gui_hFigure);
        handles = guihandles(gui_hFigure);
        if ~isempty(handles)
            if isempty(data)
                data = handles;
            else
                names = fieldnames(handles);
                for k=1:length(names)
                    data.(char(names(k)))=handles.(char(names(k)));
                end
            end
        end
        guidata(gui_hFigure, data);
    end

    % Apply input P/V pairs other than 'visible'
    for index=1:2:length(varargin)
        if length(varargin) == index || ~ischar(varargin{index})
            break;
        end

        len1 = min(length('visible'),length(varargin{index}));
        if ~strncmpi(varargin{index},'visible',len1)
            try set(gui_hFigure, varargin{index}, varargin{index+1}), catch break, end
        end
    end

    % If handle visibility is set to 'callback', turn it on until finished
    % with OpeningFcn
    gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
    if strcmp(gui_HandleVisibility, 'callback')
        set(gui_hFigure,'HandleVisibility', 'on');
    end

    feval(gui_State.gui_OpeningFcn, gui_hFigure, [], guidata(gui_hFigure), varargin{:});

    if isscalar(gui_hFigure) && ishghandle(gui_hFigure)
        % Handle the default callbacks of predefined toolbar tools in this
        % GUI, if any
        guidemfile('restoreToolbarToolPredefinedCallback',gui_hFigure); 
        
        % Update handle visibility
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);

        % Call openfig again to pick up the saved visibility or apply the
        % one passed in from the P/V pairs
        if ~gprogramed
            gui_hFigure = local_openfig(gui_State.gui_Name, 'reuse',gui_Visible);
        elseif ~isempty(gui_VisibleInput)
            set(gui_hFigure,'Visible',gui_VisibleInput);
        end
        if strcmpi(get(gui_hFigure, 'Visible'), 'on')
            figure(gui_hFigure);
            
            if gui_Options.singleton
                setappdata(gui_hFigure,'GUIOnScreen', 1);
            end
        end

        % Done with GUI initialization
        if isappdata(gui_hFigure,'InGUIInitialization')
            rmappdata(gui_hFigure,'InGUIInitialization');
        end

        % If handle visibility is set to 'callback', turn it on until
        % finished with OutputFcn
        gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
        if strcmp(gui_HandleVisibility, 'callback')
            set(gui_hFigure,'HandleVisibility', 'on');
        end
        gui_Handles = guidata(gui_hFigure);
    else
        gui_Handles = [];
    end

    if nargout
        [varargout{1:nargout}] = feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    else
        feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    end

    if isscalar(gui_hFigure) && ishghandle(gui_hFigure)
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);
    end
end

function gui_hFigure = local_openfig(name, singleton, visible)

% openfig with three arguments was new from R13. Try to call that first, if
% failed, try the old openfig.
if nargin('openfig') == 2
    % OPENFIG did not accept 3rd input argument until R13,
    % toggle default figure visible to prevent the figure
    % from showing up too soon.
    gui_OldDefaultVisible = get(0,'defaultFigureVisible');
    set(0,'defaultFigureVisible','off');
    gui_hFigure = matlab.hg.internal.openfigLegacy(name, singleton);
    set(0,'defaultFigureVisible',gui_OldDefaultVisible);
else
    % Call version of openfig that accepts 'auto' option"
    gui_hFigure = matlab.hg.internal.openfigLegacy(name, singleton, visible);  
%     %workaround for CreateFcn not called to create ActiveX
%         peers=findobj(findall(allchild(gui_hFigure)),'type','uicontrol','style','text');    
%         for i=1:length(peers)
%             if isappdata(peers(i),'Control')
%                 actxproxy(peers(i));
%             end            
%         end
end

function result = local_isInvokeActiveXCallback(gui_State, varargin)

try
    result = ispc && iscom(varargin{1}) ...
             && isequal(varargin{1},gcbo);
catch
    result = false;
end

function result = local_isInvokeHGCallback(gui_State, varargin)

try
    fhandle = functions(gui_State.gui_Callback);
    result = ~isempty(findstr(gui_State.gui_Name,fhandle.file)) || ...
             (ischar(varargin{1}) ...
             && isequal(ishghandle(varargin{2}), 1) ...
             && (~isempty(strfind(varargin{1},[get(varargin{2}, 'Tag'), '_'])) || ...
                ~isempty(strfind(varargin{1}, '_CreateFcn'))) );
catch
    result = false;
end


