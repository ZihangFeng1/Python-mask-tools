# KLayout RBA API 类型定义（用于 VSCode 自动补全）
# KLayout 运行时会提供真正的 API，此文件仅用于 IDE 提示。
# @see https://www.klayout.de/doc-qt5/code/classes.html

module RBA
  class Application
    def self.instance; end
    def main_window; end
  end

  class MainWindow
    def create_layout(mode); end
    def current_view; end
    def close; end
  end

  class LayoutView
    def layout; end
    def select_cell(cell_index, cv_index); end
    def add_missing_layers; end
    def zoom_fit; end
    def max_hier; end
    def title=(t); end
    def current_view; end
  end

  class Layout
    attr_accessor :dbu
    def create_cell(name); end
    def cell(name); end
    def top_cell; end
    def insert_layer(li); end
    def layer(li); end
    def each_cell; end
  end

  class Cell
    def name; end
    def cell_index; end
    def shapes(layer); end
    def insert(s); end
    def transformed(t); end
    def each_shape(layer); end
  end

  class Shape
    def polygon; end
    def path; end
    def text; end
    def is_polygon?; end
    def is_path?; end
    def is_text?; end
    def transformed(t); end
  end

  class Shapes
    def insert(s); end
    def each; end
  end

  class DPoint
    attr_accessor :x, :y
    def initialize(x, y); end
    def +(p); end
    def -(p); end
    def *(s); end
    def sq_abs; end
    def abs; end
    def distance(p); end
  end

  class Point
    attr_accessor :x, :y
    def initialize(x, y); end
    def +(p); end
    def -(p); end
    def *(s); end
  end

  class DVector
    attr_accessor :x, :y
    def initialize(x, y); end
    def sq_abs; end
    def abs; end
    def *(s); end
  end

  class DPath
    attr_accessor :width
    def initialize(pts, width); end
    def num_points; end
    def each_point; end
    def polygon; end
    def transformed(t); end
  end

  class Path
    def self.from_dpath(dpath); end
    def length; end
    def each_point; end
  end

  class DPolygon
    def initialize(pts); end
    def transformed(t); end
    def area; end
    def perimeter; end
    def each_point; end
    def move(v); end
  end

  class Polygon
    def self.from_dpoly(dpoly); end
    def area; end
    def perimeter; end
    def move(v); end
    def transformed(t); end
  end

  class Edge
    attr_accessor :p1, :p2
    def initialize; end
    def length; end
  end

  class Edges
    def initialize; end
    def +=(e); end
    def insert(e); end
    def each; end
  end

  class Region
    def initialize; end
    def +=(r); end
    def insert(s); end
    def merge; end
    def sized(v); end
    def boolean(other, mode); end
    def each; end
  end

  class LayerInfo
    def initialize(l, d); end
    def layer; end
    def datatype; end
  end

  class DCplxTrans
    def initialize(scale, angle, mirror, dx, dy); end
    def transformed(p); end
  end

  class Text
    def initialize(s, x, y); end
    def x; end
    def y; end
  end

  class Library
    def self.library(name); end
    def register; end
  end
end
