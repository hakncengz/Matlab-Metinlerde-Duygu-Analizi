%%Author : HAKAN CENGİZ-201713709046_2021

function varargout = ER(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ER_OpeningFcn, ...
                   'gui_OutputFcn',  @ER_OutputFcn, ...
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

function ER_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);

function varargout = ER_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


function tableButton_Callback(hObject, eventdata, handles)



function preButton_Callback(hObject, eventdata, handles)
TextP=get(handles.testText,'String');
a=load("dataset.mat");
reportsNew = [ ...
   TextP];
documentsNew = transactions(reportsNew);
XNew = doc2sequence(a.enc,documentsNew,'Length',a.sequenceLength);
labelsNew = classify(a.net,XNew);
set(handles.preText,'String',labelsNew);

function calculateButton_Callback(hObject, eventdata, handles)
global perf;
load("dataset.mat");
set(handles.accuracyrateText,'String',perf.AccuracyRate); 
set(handles.kappaText,'String',perf.Kappa); 
set(handles.rmseText,'String',perf.RMSE); 
set(handles.maeText,'String',perf.MAE); 
set(handles.rrseText,'String',perf.RRSE); 
set(handles.raeText,'String',perf.RAE); 
set(handles.detailedAccuracyTable,'Data',table2cell(perf.DetailedAccuracyByClass));


function EstimatedSalaryText_Callback(hObject, eventdata, handles)
% hObject    handle to EstimatedSalaryText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EstimatedSalaryText as text
%        str2double(get(hObject,'String')) returns contents of EstimatedSalaryText as a double


% --- Executes during object creation, after setting all properties.
function EstimatedSalaryText_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ageText_Callback(hObject, eventdata, handles)
% hObject    handle to ageText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ageText as text
%        str2double(get(hObject,'String')) returns contents of ageText as a double


% --- Executes during object creation, after setting all properties.
function ageText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ageText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in preButton.



function testText_Callback(hObject, eventdata, handles)
% hObject    handle to testText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of testText as text
%        str2double(get(hObject,'String')) returns contents of testText as a double


% --- Executes during object creation, after setting all properties.
function testText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to testText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function accuracyrateText_Callback(hObject, eventdata, handles)
% hObject    handle to accuracyrateText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of accuracyrateText as text
%        str2double(get(hObject,'String')) returns contents of accuracyrateText as a double


% --- Executes during object creation, after setting all properties.
function accuracyrateText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to accuracyrateText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rrseText_Callback(hObject, eventdata, handles)
% hObject    handle to rrseText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rrseText as text
%        str2double(get(hObject,'String')) returns contents of rrseText as a double


% --- Executes during object creation, after setting all properties.
function rrseText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rrseText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function raeText_Callback(hObject, eventdata, handles)
% hObject    handle to raeText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of raeText as text
%        str2double(get(hObject,'String')) returns contents of raeText as a double


% --- Executes during object creation, after setting all properties.
function raeText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to raeText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rmseText_Callback(hObject, eventdata, handles)
% hObject    handle to rmseText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rmseText as text
%        str2double(get(hObject,'String')) returns contents of rmseText as a double


% --- Executes during object creation, after setting all properties.
function rmseText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rmseText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maeText_Callback(hObject, eventdata, handles)
% hObject    handle to maeText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maeText as text
%        str2double(get(hObject,'String')) returns contents of maeText as a double


% --- Executes during object creation, after setting all properties.
function maeText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maeText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kappaText_Callback(hObject, eventdata, handles)
% hObject    handle to kappaText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kappaText as text
%        str2double(get(hObject,'String')) returns contents of kappaText as a double


% --- Executes during object creation, after setting all properties.
function kappaText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kappaText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function preText_Callback(hObject, eventdata, handles)
% hObject    handle to preText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of preText as text
%        str2double(get(hObject,'String')) returns contents of preText as a double


% --- Executes during object creation, after setting all properties.
function preText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to preText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
