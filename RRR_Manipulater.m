function varargout = RRR_Manipulator(varargin)
% RRR_MANIPULATOR MATLAB code for RRR_Manipulator.fig
%      RRR_MANIPULATOR, by itself, creates a new RRR_MANIPULATOR or raises the existing
%      singleton*.
%
%      H = RRR_MANIPULATOR returns the handle to a new RRR_MANIPULATOR or the handle to
%      the existing singleton*.
%
%      RRR_MANIPULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RRR_MANIPULATOR.M with the given input arguments.
%
%      RRR_MANIPULATOR('Property','Value',...) creates a new RRR_MANIPULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RRR_Manipulator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RRR_Manipulator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RRR_Manipulator

% Last Modified by GUIDE v2.5 22-May-2024 10:28:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
                   'gui_Singleton', gui_Singleton, ...
                   'gui_OpeningFcn', @RRR_Manipulator_OpeningFcn, ...
                   'gui_OutputFcn', @RRR_Manipulator_OutputFcn, ...
                   'gui_LayoutFcn', @RRR_Manipulator_LayoutFcn, ...
                   'gui_Callback', []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before RRR_Manipulator is made visible.
function RRR_Manipulator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RRR_Manipulator (see VARARGIN)

% Choose default command line output for RRR_Manipulator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RRR_Manipulator wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = RRR_Manipulator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function h1 = RRR_Manipulator_LayoutFcn(policy)
% RRR_Manipulator_LayoutFcn Load the GUI layout from the .fig file

% Path to your .fig file
figFilePath = 'C:\Users\girip\OneDrive\Desktop\Education\Academics\Semester 4\AI Robotics\Website\RRR_Manipulator.fig';

% Load the figure from the .fig file
h1 = hgload(figFilePath);

% Apply any layout policy if specified
if nargin
    if strcmp(policy, 'reuse')
        % Reuse the existing layout
        set(h1, 'Name', 'RRR_Manipulator');
    end
end
