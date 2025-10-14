# Semantic Segmentation Editor

A web based labeling tool for creating AI training data sets (2D and 3D).
The tool has been developed in the context of autonomous driving research.
It supports images (.jpg or .png) and point clouds (.pcd).
It is a [Meteor](http://www.meteor.com) app developed with [React](http://reactjs.org),
[Paper.js](http://paperjs.org/) and [three.js](https://threejs.org/).

**Latest changes**
 - **Version 1.5:** Provide a Docker image and update to Meteor 1.10 
 - **Version 1.4:** Support for RGB pointclouds (thanks @Gekk0r)
 - **Version 1.3:** Improve pointcloud labeling: bug fixes and performance improvement (labeling a 1M pointcloud is now possible)
 - **Version 1.2.2:** Breaking change: exported point cloud coordinates are no longer translated (thanks @hetzge)
 - **Version 1.2.0:** Support for binary and binary compressed point clouds (thanks @CecilHarvey)
 

## Bitmap Image Editor

:movie_camera: [VIDEO: Bitmap labeling overview](https://vimeo.com/282003466)

<a href="https://github.com/dmandrioli/sse-extra/raw/master/Capture2D1.PNG"><img width="400" src="https://github.com/dmandrioli/sse-extra/raw/master/Capture2D1.jpg"/></a>
<a href="https://github.com/dmandrioli/sse-extra/raw/master/Capture2D2.PNG"><img width="400" src="https://github.com/dmandrioli/sse-extra/raw/master/Capture2D2.jpg"/></a>

## PCD Point Cloud Editor

:movie_camera: [VIDEO: Point cloud labeling overview](https://vimeo.com/282222626)

<a href="https://github.com/dmandrioli/sse-extra/raw/master/Capture3D1.PNG"><img width="400" src="https://github.com/dmandrioli/sse-extra/raw/master/Capture3D1.jpg"/></a>
<a href="https://github.com/dmandrioli/sse-extra/raw/master/Capture3D2.PNG"><img width="400" src="https://github.com/dmandrioli/sse-extra/raw/master/Capture3D2.jpg"/></a>

## How to run

### Docker Compose (PowerShell)

```powershell
./run
```

The editor will run by default on `http://localhost:8000`

(Optional) You can modify `settings.json` to customize classes data.

## Configuration File: settings.json

``` json
{
  "configuration": {
    "images-folder": "/root/sse-images/input",
    "internal-folder": "/root/sse-images/output_tmp",
    "demo-mode": false
  },
  "sets-of-classes": [
    {
      "name": "Cityscapes", "objects": [
      {"label": "VOID", "color": "#CFCFCF"},
      {"label": "Road", "color": "#804080", "icon": "Road"},
      {"label": "Sidewalk", "color": "#F423E8", "icon": "NaturePeople"},
      {"label": "Parking", "color": "#FAAAA0", "icon": "Parking"},
      {"label": "Rail Track", "color": "#E6968C", "icon": "Train"},
      {"label": "Person", "color": "#DC143C", "icon": "Walk"},
      {"label": "Rider", "color": "#FF0000", "icon": "Motorbike"},
      {"label": "Car", "color": "#0000E8", "icon": "Car"},
      {"label": "Truck", "color": "#000046", "icon": "Truck"},
      {"label": "Bus", "color": "#003C64", "icon": "Bus"},
      {"label": "On Rails", "color": "#E6968C", "icon": "Train"},
      {"label": "Motorcycle", "color": "#0000E6", "icon": "Motorbike"},
      {"label": "Bicycle", "color": "#770B20", "icon": "Bike"},
      {"label": "Caravan", "color": "#00005A", "icon": "Caravan"},
      {"label": "Trailer", "color": "#00006E", "icon": "TruckTrailer"},
      {"label": "Building", "color": "#464646", "icon": "HomeVariant"},
      {"label": "Wall", "color": "#66669C", "icon": "Wall"},
      {"label": "Fence", "color": "#BE9999", "icon": "Gate"},
      {"label": "Guard Rail", "color": "#B4A5B4", "icon": "SignCaution"},
      {"label": "Bridge", "color": "#966464", "icon": "Bridge"},
      {"label": "Tunnel", "color": "#96785A", "icon": "AlarmLight"},
      {"label": "Pole", "color": "#999999", "icon": "Instapaper"},
      {"label": "Pole Group", "color": "#999999", "icon": "Instapaper"},
      {"label": "Traffic Sign", "color": "#DCDC00", "icon": "SignDirection"},
      {"label": "Traffic Light", "color": "#FAAA1E", "icon": "TrafficLight"},
      {"label": "Vegetation", "color": "#6B8E23", "icon": "PineTree"},
      {"label": "Terrain", "color": "#98FB98", "icon": "Terrain"},
      {"label": "Sky", "color": "#4682B4", "icon": "WeatherPartlycloudy"},
      {"label": "Ground", "color": "#510051", "icon": "Drag"},
      {"label": "Dynamic", "color": "#6F4A00", "icon": "RunFast"},
      {"label": "Static", "color": "#000000", "icon": "Anchor"}
    ]
    },
    {
      "name": "AD20",
      "objects": [
        {"label": "VOID", "color": "#CFCFCF"},
        {
          "label": "Void",
          "color": "#FF8800",
          "icon": "BorderNoneVariant"
        }, {
          "label": "Road",
          "color": "#799024",
          "icon": "Road"
        },
        {
          "label": "Pedestrian",
          "color": "#FAFFF5",
          "icon": "Walk"
        },
        {
          "label": "Car",
          "color": "#FF6D67",
          "icon": "Car"
        },
        {
          "label": "Truck",
          "color": "#FF5B8E",
          "icon": "Truck"
        },
        {
          "label": "Bus",
          "color": "#FF6FA2",
          "icon": "Bus"
        },
        {
          "label": "On rails",
          "color": "#FF7FC3",
          "icon": "Train"
        },
        {
          "label": "Motorcycle",
          "color": "#FFA859",
          "icon": "Motorbike"
        },
        {
          "label": "Bicycle",
          "color": "#FFDB62",
          "icon": "Bike"
        },
        {
          "label": "Sky",
          "color": "#87D8FF",
          "icon": "WeatherPartlycloudy"
        },
        {
          "label": "Vegetation",
          "color": "#7BC32B",
          "icon": "PineTree"
        },
        {
          "label": "Sidewalk",
          "color": "#827E67",
          "icon": "NaturePeople"
        },
        {
          "label": "Traffic sign",
          "color": "#9E9BFF",
          "icon": "SignDirection"
        },
        {
          "label": "Lane marking",
          "color": "#DDCDFF",
          "icon": "RoadVariant"
        },
        {
          "label": "Building",
          "color": "#785C6F",
          "icon": "HomeVariant"
        },
        {
          "label": "Traffic light",
          "color": "#119599",
          "icon": "SignDirection"
        },
        {
          "label": "Snow covered",
          "color": "#F1F1EF",
          "icon": "Snowflake"
        },
        {
          "label": "Pole",
          "color": "#FBB577",
          "icon": "Instapaper"
        },
        {
          "label": "Unpaved road",
          "color": "#C0AE89",
          "icon": "BlurLinear"
        },
        {
          "label": "Guard rail",
          "color": "#4D3D48",
          "icon": "SignCaution"
        }
      ]
    },
    {
      "name": "33 Classes", "objects": [
      {"label": "VOID", "color": "#CFCFCF"},
      {"label": "Class 1"},
      {"label": "Class 2"},
      {"label": "Class 3"},
      {"label": "Class 4"},
      {"label": "Class 5"},
      {"label": "Class 6"},
      {"label": "Class 7"},
      {"label": "Class 8"},
      {"label": "Class 9"},
      {"label": "Class 10"},
      {"label": "Class 11"},
      {"label": "Class 12"},
      {"label": "Class 13"},
      {"label": "Class 14"},
      {"label": "Class 15"},
      {"label": "Class 16"},
      {"label": "Class 17"},
      {"label": "Class 18"},
      {"label": "Class 19"},
      {"label": "Class 20"},
      {"label": "Class 21"},
      {"label": "Class 22"},
      {"label": "Class 23"},
      {"label": "Class 24"},
      {"label": "Class 25"},
      {"label": "Class 26"},
      {"label": "Class 27"},
      {"label": "Class 28"},
      {"label": "Class 29"},
      {"label": "Class 30"},
      {"label": "Class 31"},
      {"label": "Class 32"}
    ]
    }
  ]
}
```

## How to use

The editor is built around 3 different screens:

The file navigator let's you browse available files to select a bitmap images or a point cloud for labeling
<img width="300" src="https://github.com/dmandrioli/sse-extra/raw/master/CaptureN1.jpg"/>
  
The bitmap image editor is dedicated to the labeling of jpg and png files by drawing polygons
<img width="300" src="https://github.com/dmandrioli/sse-extra/raw/master/Capture2D2.jpg"/>

The point cloud editor is dedicated to the labeling of point clouds by creating objects made of subsets of 3D points
<img width="300" src="https://github.com/dmandrioli/sse-extra/raw/master/Capture3D3.jpg"/>


### Using the bitmap image editor

There are several tools to create labeling polygons:
#### Polygon Drawing Tool (P)
  - Click and/or drag to create points
  - Type ESC to remove last created points in reverse order 
  - Drag the mouse pointer or hold Shift to create a complex polygon without having to click for each point
  - Type ENTER or double click the first point to close the polygon

#### Magic Tool (A)
  - Create a polygon automatically using contrast threshold detection
  - This tool is only useful to draw the outline of objects that have sharp contrasted edges (examples: sky, lane
marking)
  - Click inside the area you want to outline, then adjusts any sliders on the right to adjust the result
  - Type ENTER to validate the result

#### Manipulation Tool (Alt)
  - Select, move and add point(s) to existing polygons
  - Click inside a polygon to select it
  - Click a point to select it
  - Draw a lasso around multiple points to select them
  - Drag a point with the mouse to move it
  - Hold Shift to separate points that belongs to more than one polygon
  - Click the line of a polygon to create a new point and drag the newly created point to place it

#### Cutting/Expanding Tool (C)
  - Modify the shape of an existing polygon
  - Select the polygon you want to modify
  - Draw a line starting and ending on the outline of a polygon
  - The new line replace the existing path between starting and ending points
  - The resulting shape is always the largest one

#### Contiguous Polygon Tool (F)
  - Create contiguous polygons easily</p>
  - Start a new polygon with the Polygon Drawing Tool</p> 
  - Create the starting point by snapping to the outline of the polygon you want to workaround
  - Create the ending point by snapping to another outline, at this point you must have a straight line crossing one or more existing polygons
  - Hit F one or several times to choose what workaround path to use

### Using the point cloud editor

  - Mouse left button: Rotate the point cloud around the current focused point (the center of the point cloud by
  default), click on a single point to add it to the current selection
  - Mouse wheel: Zoom in/out
  - Mouse middle button (or Ctrl+Click): Change the target of the camera
  - Mouse right button: Used to select multiple points at the same time depending on the current Selection Tool and
  Selection Mode.
  - Arrow keys: Move through the scene 
  
### PCD support

 - Supported input PCD format: ASCII, Binary and Binary compressed
 - Supported input fields: `x`, `y`, `z`, `label` (optional integer), `rgb` (optional integer)
 - Output PCD format is ASCII with fields `x`, `y`, `z`, `label`, `object`  and `rgb` (if available)
 
### API Endpoints

 - <code>/api/listing</code>: List all annotated images
 - <code>/api/json/[PATH_TO_FILE]</code>: (2D only) Get the polygons and other data for that file
 - <code>/api/pcdtext/[PATH_TO_FILE]</code>: (3D only) Get the labeling of a pcd file using 2 addditional
 columns: <code>label</code>
 and <code>object</code>
 -  <code>/api/pcdfile/[PATH_TO_FILE]</code>: (3D only) The same but returned as "plain/text" attachment file download


