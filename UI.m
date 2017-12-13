function varargout = UI(varargin)
% UI MATLAB code for UI.fig
%      UI, by itself, creates a new UI or raises the existing
%      singleton*.
%
%      H = UI returns the handle to a new UI or the handle to
%      the existing singleton*.
%
%      UI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI.M with the given input arguments.
%
%      UI('Property','Value',...) creates a new UI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UI

% Last Modified by GUIDE v2.5 23-Nov-2017 14:21:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UI_OpeningFcn, ...
                   'gui_OutputFcn',  @UI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before UI is made visible.
function UI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UI (see VARARGIN)

% Choose default command line output for UI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UI_OutputFcn(hObject, eventdata, handles) 
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
