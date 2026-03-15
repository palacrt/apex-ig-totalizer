--------------------------------------------------------------------------------
-- Name: Sample Interactive Grids
-- Copyright (c) 2012, 2026 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>133359555434467446250
,p_default_application_id=>230893
,p_default_id_offset=>134018081387913277291
,p_default_owner=>'WKSP_PALACRT'
);
end;
/
 
prompt APPLICATION 230893 - Sample Interactive Grids
--
-- Application Export:
--   Application:     230893
--   Name:            Sample Interactive Grids
--   Date and Time:   15:25 Domingo Marzo 15, 2026
--   Exported By:     JUANDPALACIOS@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 135336281339607014852
--   Manifest End
--   Version:         24.2.14
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/dev_apex_latam_ig_totalizer
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(135336281339607014852)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'DEV.APEX-LATAM.IG-TOTALIZER'
,p_display_name=>'Interactive Grid Numeric Totalizer'
,p_category=>'INIT'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin ',
') return apex_plugin.t_dynamic_action_render_result as',
'    ',
'    l_result apex_plugin.t_dynamic_action_render_result;',
'    ',
'    c_region         VARCHAR2(4000)          := p_dynamic_action.attribute_01;',
'    c_field          VARCHAR2(4000)          := p_dynamic_action.attribute_02;',
'    c_page_item      VARCHAR2(4000)          := p_dynamic_action.attribute_03;',
'    c_operation      VARCHAR2(10)            := p_dynamic_action.attribute_04;',
'    c_format_mask    VARCHAR2(100)           := p_dynamic_action.attribute_05;',
'',
'begin',
'',
'    apex_javascript.add_library (',
'        p_name      => ''ig_totalizer'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null ',
'    ); ',
'',
'    l_result.javascript_function := ''igTotalizer'';',
'    l_result.attribute_01 := c_region;',
'    l_result.attribute_02 := c_field;',
'    l_result.attribute_03 := c_page_item;',
'    l_result.attribute_04 := c_operation;',
'    l_result.attribute_05 := c_format_mask;',
'',
'    return l_result;',
'end;'))
,p_api_version=>1
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_version_scn=>15743115607787
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>35
,p_created_on=>wwv_flow_imp.dz('20260206235318Z')
,p_updated_on=>wwv_flow_imp.dz('20260315152501Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135336222123154655220)
,p_plugin_id=>wwv_flow_imp.id(135336281339607014852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Region Static Id'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Write the Static Id of Interactive Grid Region'
,p_created_on=>wwv_flow_imp.dz('20260206235402Z')
,p_updated_on=>wwv_flow_imp.dz('20260207003140Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135336255528340660443)
,p_plugin_id=>wwv_flow_imp.id(135336281339607014852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Field Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Wirte the Field Name from te IG to be totalized'
,p_created_on=>wwv_flow_imp.dz('20260206235454Z')
,p_updated_on=>wwv_flow_imp.dz('20260207002525Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135338652434079838266)
,p_plugin_id=>wwv_flow_imp.id(135336281339607014852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Page Item to Return Total'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_created_on=>wwv_flow_imp.dz('20260207002432Z')
,p_updated_on=>wwv_flow_imp.dz('20260207003153Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135339527973910250157)
,p_plugin_id=>wwv_flow_imp.id(135336281339607014852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Operation'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'sum'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_created_on=>wwv_flow_imp.dz('20260207003231Z')
,p_updated_on=>wwv_flow_imp.dz('20260207003339Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(135339535446040252208)
,p_plugin_attribute_id=>wwv_flow_imp.id(135339527973910250157)
,p_display_sequence=>10
,p_display_value=>'SUM'
,p_return_value=>'sum'
,p_is_quick_pick=>true
,p_help_text=>unistr('Sum Val\00FAes')
,p_created_on=>wwv_flow_imp.dz('20260207003251Z')
,p_updated_on=>wwv_flow_imp.dz('20260207003251Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(135339546096725255642)
,p_plugin_attribute_id=>wwv_flow_imp.id(135339527973910250157)
,p_display_sequence=>20
,p_display_value=>'COUNT'
,p_return_value=>'count'
,p_help_text=>'Count Values in Field'
,p_created_on=>wwv_flow_imp.dz('20260207003326Z')
,p_updated_on=>wwv_flow_imp.dz('20260207003326Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(135339661858232892909)
,p_plugin_attribute_id=>wwv_flow_imp.id(135339527973910250157)
,p_display_sequence=>30
,p_display_value=>'AVG'
,p_return_value=>'avg'
,p_help_text=>'Calculates the Average'
,p_created_on=>wwv_flow_imp.dz('20260207003339Z')
,p_updated_on=>wwv_flow_imp.dz('20260207003339Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135342629014991092643)
,p_plugin_id=>wwv_flow_imp.id(135336281339607014852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Format Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_created_on=>wwv_flow_imp.dz('20260207010656Z')
,p_updated_on=>wwv_flow_imp.dz('20260207010656Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E20736574546F74616C286D6F64656C2C206669656C642C20706167654974656D2C6F7065726174696F6E2C666F726D61744D61736B29207B0A0A20202020636F6E73742076616C6F724B6579203D206D6F64656C2E6765744669656C';
wwv_flow_imp.g_varchar2_table(2) := '644B6579286669656C64293B0A202020206C657420746F74616C203D20303B0A202020206C6574206974656D73203D20303B0A202020206C657420726573756C74203D202D313B0A0A20202020636F6E736F6C652E6C6F6728603E3E207374617274696E';
wwv_flow_imp.g_varchar2_table(3) := '672073756D20247B6669656C647D20636F6C756D6E60293B0A202020206D6F64656C2E666F72456163682866756E6374696F6E20287265636F72642C20696E6465782C20696429207B0A20202020202020200A20202020202020200A0A20202020202020';
wwv_flow_imp.g_varchar2_table(4) := '206C65742076616C6F72203D20617065782E6C6F63616C652E746F4E756D626572287265636F72645B76616C6F724B65795D2C20666F726D61744D61736B293B20202F2F207061727365466C6F6174287265636F72645B76616C6F724B65795D292C2020';
wwv_flow_imp.g_varchar2_table(5) := '2F2F207265636F72645B76616C6F724B65795D2073686F756C642062652061206C6974746C6520666173746572207468616E207573696E67206D6F64656C2E67657456616C756520696E2061206C6F6F700A2020202020202020202020206D657461203D';
wwv_flow_imp.g_varchar2_table(6) := '206D6F64656C2E6765745265636F72644D65746164617461286964293B0A0A2020202020202020696620282169734E614E2876616C6F722920262620216D6574612E64656C6574656420262620216D6574612E61676729207B0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(7) := '2020746F74616C202B3D2076616C6F723B0A2020202020202020202020206974656D73202B3D20313B0A0A20202020202020207D0A0A2020202020202020696620286F7065726174696F6E203D3D3D202273756D2229207B0A2020202020202020202020';
wwv_flow_imp.g_varchar2_table(8) := '20726573756C74203D20746F74616C3B0A20202020202020207D20656C736520696620286F7065726174696F6E203D3D3D2022636F756E742229207B0A202020202020202020202020726573756C74203D206974656D733B0A20202020202020207D2065';
wwv_flow_imp.g_varchar2_table(9) := '6C736520696620286F7065726174696F6E203D3D3D20226176672229207B0A202020202020202020202020726573756C74203D20286974656D73203E203029203F20746F74616C202F206974656D73203A20303B0A20202020202020207D0A0A20202020';
wwv_flow_imp.g_varchar2_table(10) := '7D293B0A0A20202020202020202020202020202069662028666F726D61744D61736B29207B0A20202020202020202020202020202020726573756C74203D20617065782E6C6F63616C652E666F726D61744E756D62657228726573756C742C20666F726D';
wwv_flow_imp.g_varchar2_table(11) := '61744D61736B293B0A2020202020202020202020207D0A2020200A20202020636F6E736F6C652E6C6F6728603E3E204F7065726174696F6E20247B6F7065726174696F6E7D60293B0A20202020636F6E736F6C652E6C6F6728603E3E20466F726D617420';
wwv_flow_imp.g_varchar2_table(12) := '4D61736B20247B666F726D61744D61736B7D60293B0A0A20202020636F6E736F6C652E6C6F6728603E3E2053657474696E6720247B706167654974656D7D2076616C75657320746F20247B726573756C747D60293B0A0A20202020617065782E6974656D';
wwv_flow_imp.g_varchar2_table(13) := '28706167654974656D292E73657456616C756528726573756C74293B0A0A7D0A0A0A66756E6374696F6E206967546F74616C697A65722829207B0A0A20202020636F6E737420726567696F6E5374617469634964203D20746869732E616374696F6E2E61';
wwv_flow_imp.g_varchar2_table(14) := '747472696275746530313B0A20202020636F6E7374206669656C64203D20746869732E616374696F6E2E61747472696275746530323B0A20202020636F6E737420706167654974656D203D20746869732E616374696F6E2E61747472696275746530333B';
wwv_flow_imp.g_varchar2_table(15) := '0A20202020636F6E7374206F7065726174696F6E203D20746869732E616374696F6E2E61747472696275746530343B0A20202020636F6E737420666F726D61744D61736B203D20746869732E616374696F6E2E6174747269627574653035207C7C202739';
wwv_flow_imp.g_varchar2_table(16) := '3939393939393939393939393939393939393930273B0A0A20202020636F6E736F6C652E6C6F672860526567696F6E20247B726567696F6E53746174696349647D60293B0A20202020636F6E736F6C652E6C6F67286043616D706F20247B6669656C647D';
wwv_flow_imp.g_varchar2_table(17) := '60293B0A20202020636F6E736F6C652E6C6F6728604954454D20247B706167654974656D7D60293B0A0A0A636F6E737420635F6D6F64656C203D20617065782E726567696F6E28726567696F6E5374617469634964290A202020202E7769646765742829';
wwv_flow_imp.g_varchar2_table(18) := '0A202020202E696E7465726163746976654772696428226765745669657773222C20226772696422290A202020202E6D6F64656C3B0A0A0A20202020635F6D6F64656C2E737562736372696265287B200A20202020202020206F6E4368616E67653A2066';
wwv_flow_imp.g_varchar2_table(19) := '756E6374696F6E2028747970652C206368616E676529207B200A202020202020202020202020636F6E736F6C652E6C6F6728223E3E206D6F64656C6F2063616D626961646F20222C20747970652C206368616E6765290A20202020202020202020202069';
wwv_flow_imp.g_varchar2_table(20) := '66202874797065203D3D3D2022736574222029207B0A20202020202020202020202020202020696620286368616E67652E6669656C64203D3D3D206669656C6429207B0A2020202020202020202020202020202020202020736574546F74616C28635F6D';
wwv_flow_imp.g_varchar2_table(21) := '6F64656C2C6669656C642C706167654974656D2C6F7065726174696F6E2C666F726D61744D61736B290A202020202020202020202020202020207D0A2020202020202020202020207D20656C736520696620287479706520213D3D20226D6F7665222026';
wwv_flow_imp.g_varchar2_table(22) := '26207479706520213D3D20226D6574614368616E67652229207B0A202020202020202020202020202020202F2F20616E79206F74686572206368616E67652065786365707420666F72206D6F766520616E64206D6574614368616E676520616666656374';
wwv_flow_imp.g_varchar2_table(23) := '207468652063616C63756C6174696F6E0A20202020202020202020202020202020736574546F74616C28635F6D6F64656C2C6669656C642C706167654974656D2C6F7065726174696F6E2C666F726D61744D61736B290A2020202020202020202020207D';
wwv_flow_imp.g_varchar2_table(24) := '0A20202020202020207D2C0A202020202020202070726F6772657373566965773A2024286023247B706167654974656D7D60290A0A202020207D293B0A0A20202020736574546F74616C28635F6D6F64656C2C6669656C642C706167654974656D2C6F70';
wwv_flow_imp.g_varchar2_table(25) := '65726174696F6E2C666F726D61744D61736B293B0A202020200A20202020635F6D6F64656C2E6665746368416C6C2866756E6374696F6E28297B7D293B0A0A202020207D0A0A0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(135336395828667031024)
,p_plugin_id=>wwv_flow_imp.id(135336281339607014852)
,p_file_name=>'ig_totalizer.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260210125141Z')
,p_updated_on=>wwv_flow_imp.dz('20260210125141Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E20736574546F74616C28742C652C6F2C612C69297B636F6E7374206C3D742E6765744669656C644B65792865293B6C6574206E3D302C733D302C633D2D313B636F6E736F6C652E6C6F6728603E3E207374617274696E672073756D20';
wwv_flow_imp.g_varchar2_table(2) := '247B657D20636F6C756D6E60292C742E666F7245616368282866756E6374696F6E28652C6F2C67297B6C657420723D617065782E6C6F63616C652E746F4E756D62657228655B6C5D2C69293B6D6574613D742E6765745265636F72644D65746164617461';
wwv_flow_imp.g_varchar2_table(3) := '2867292C69734E614E2872297C7C6D6574612E64656C657465647C7C6D6574612E6167677C7C286E2B3D722C732B3D31292C2273756D223D3D3D613F633D6E3A22636F756E74223D3D3D613F633D733A22617667223D3D3D61262628633D733E303F6E2F';
wwv_flow_imp.g_varchar2_table(4) := '733A30297D29292C69262628633D617065782E6C6F63616C652E666F726D61744E756D62657228632C6929292C636F6E736F6C652E6C6F6728603E3E204F7065726174696F6E20247B617D60292C636F6E736F6C652E6C6F6728603E3E20466F726D6174';
wwv_flow_imp.g_varchar2_table(5) := '204D61736B20247B697D60292C636F6E736F6C652E6C6F6728603E3E2053657474696E6720247B6F7D2076616C75657320746F20247B637D60292C617065782E6974656D286F292E73657456616C75652863297D66756E6374696F6E206967546F74616C';
wwv_flow_imp.g_varchar2_table(6) := '697A657228297B636F6E737420743D746869732E616374696F6E2E61747472696275746530312C653D746869732E616374696F6E2E61747472696275746530322C6F3D746869732E616374696F6E2E61747472696275746530332C613D746869732E6163';
wwv_flow_imp.g_varchar2_table(7) := '74696F6E2E61747472696275746530342C693D746869732E616374696F6E2E61747472696275746530357C7C22393939393939393939393939393939393939393930223B636F6E736F6C652E6C6F672860526567696F6E20247B747D60292C636F6E736F';
wwv_flow_imp.g_varchar2_table(8) := '6C652E6C6F67286043616D706F20247B657D60292C636F6E736F6C652E6C6F6728604954454D20247B6F7D60293B636F6E7374206C3D617065782E726567696F6E2874292E77696467657428292E696E7465726163746976654772696428226765745669';
wwv_flow_imp.g_varchar2_table(9) := '657773222C226772696422292E6D6F64656C3B6C2E737562736372696265287B6F6E4368616E67653A66756E6374696F6E28742C6E297B636F6E736F6C652E6C6F6728223E3E206D6F64656C6F2063616D626961646F20222C742C6E292C22736574223D';
wwv_flow_imp.g_varchar2_table(10) := '3D3D743F6E2E6669656C643D3D3D652626736574546F74616C286C2C652C6F2C612C69293A226D6F766522213D3D742626226D6574614368616E676522213D3D742626736574546F74616C286C2C652C6F2C612C69297D2C70726F677265737356696577';
wwv_flow_imp.g_varchar2_table(11) := '3A24286023247B6F7D60297D292C736574546F74616C286C2C652C6F2C612C69292C6C2E6665746368416C6C282866756E6374696F6E28297B7D29297D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(136358767984309605211)
,p_plugin_id=>wwv_flow_imp.id(135336281339607014852)
,p_file_name=>'ig_totalizer.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260210125141Z')
,p_updated_on=>wwv_flow_imp.dz('20260210125141Z')
,p_created_by=>'JUANDPALACIOS@GMAIL.COM'
,p_updated_by=>'JUANDPALACIOS@GMAIL.COM'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
