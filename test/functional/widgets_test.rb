require 'test_helper'

class WidgetsTest < ActionController::TestCase
  tests Chameleon::WidgetsController

  test "invalid widget" do
    ex = assert_raise(NameError) do
      get :show, :id => "blah", :format => 'xml'
    end
  end

  test "number and secondary widget with custom display text" do
    get :show, :id => "number_and_secondary_with_text", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
  <item>
    <value>1</value>
    <text>Display Me</text>
  </item>
  <item>
    <value>2</value>
    <text></text>
  </item>
</root>
EOF
    assert_equal xml, response.body
  end

  test "line widget" do
    get :show, :id => "line", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
    <item>0</item>
    <item>2</item>
    <item>3</item>
    <item>5</item>
    <item>9</item>
  <settings>
      <axisx>1</axisx>
      <axisx>2</axisx>
      <axisx>3</axisx>
      <axisx>4</axisx>
      <axisx>5</axisx>
      <axisy>0</axisy>
      <axisy>10</axisy>
    <colour>ABABAB</colour>
  </settings>
</root>
EOF
    assert_equal xml, response.body
  end

  test "pie widget" do
    get :show, :id => "pie", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
    <item>
      <value>0.5</value>
      <label>PieA</label>
      <colour>ABABAB</colour>
    </item>
    <item>
      <value>1.2</value>
      <label>PieB</label>
      <colour>CDCDCD</colour>
    </item>
    <item>
      <value>3.5</value>
      <label>PieC</label>
      <colour>EFEFEF</colour>
    </item>
</root>
EOF
    assert_equal xml, response.body
  end

  test "rag" do
    get :show, :id => "rag", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
  <item>
    <value>5</value>
    <text>Five</text>
  </item>
  <item>
    <value>2</value>
    <text>Two</text>
  </item>
  <item>
    <value>1</value>
    <text>One</text>
  </item>
</root>
EOF
    assert_equal xml, response.body
  end

  test "rag with empty values" do
    get :show, :id => "rag_with_empty_values", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
  <item>
    <value></value>
    <text></text>
  </item>
  <item>
    <value>2</value>
    <text>Two</text>
  </item>
  <item>
    <value></value>
    <text></text>
  </item>
</root>
EOF
    assert_equal xml, response.body
  end

  test "text" do
    get :show, :id => "text", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
  <item>
    <text><![CDATA[First panel text]]></text>
    <type>0</type>
  </item>
</root>
EOF
    assert_equal xml, response.body
  end

  test "text with multiple panels" do
    get :show, :id => "text_with_multiple_panels", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
  <item>
    <text><![CDATA[First panel text]]></text>
    <type>0</type>
  </item>
  <item>
    <text><![CDATA[Second panel text]]></text>
    <type>0</type>
  </item>
  <item>
    <text><![CDATA[Third panel text]]></text>
    <type>0</type>
  </item>
</root>
EOF
    assert_equal xml, response.body
  end

  test "text with multiple panels and types" do
    get :show, :id => "text_with_multiple_panels_and_types", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
  <item>
    <text><![CDATA[First panel text]]></text>
    <type>2</type>
  </item>
  <item>
    <text><![CDATA[Second panel text]]></text>
    <type>1</type>
  </item>
  <item>
    <text><![CDATA[Third panel text]]></text>
    <type>0</type>
  </item>
</root>
EOF
    assert_equal xml, response.body
  end

  test "geckometer" do
    get :show, :id => "geckometer", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
  <item>23</item>
  <min>
    <value>10</value>
    <text>Min visitors</text>
  </min>
  <max>
    <value>30</value>
    <text>Max visitors</text>
  </max>
</root>
EOF
    assert_equal xml, response.body
  end

  test "funnel widget" do
    get :show, :id => "funnel", :format => 'xml'
xml =<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<root>
    <type>reverse</type>
    <percentage>hide</percentage>
    <item>
      <value>87809</value>
      <label><![CDATA[Step 1]]></label>
    </item>
    <item>
      <value>70022</value>
      <label><![CDATA[Step 2]]></label>
    </item>
    <item>
      <value>63232</value>
      <label><![CDATA[Step 3]]></label>
    </item>
    <item>
      <value>53232</value>
      <label><![CDATA[Step 4]]></label>
    </item>
    <item>
      <value>32123</value>
      <label><![CDATA[Step 5]]></label>
    </item>
    <item>
      <value>23232</value>
      <label><![CDATA[Step 6]]></label>
    </item>
    <item>
      <value>12232</value>
      <label><![CDATA[Step 7]]></label>
    </item>
    <item>
      <value>2323</value>
      <label><![CDATA[Step 8]]></label>
    </item>
</root>
EOF
    assert_equal xml, response.body
  end  
end
