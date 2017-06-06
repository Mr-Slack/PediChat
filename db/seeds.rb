# coding: utf-8
Doctor.create(:name => 'サンプルユーザ１',:graduated_from => 'サンプル医大',:graduated_year => '2001年',:specialism => '小児内科',:belong_conference => '小児学会')
Doctor.create(:name => 'サンプルユーザ２',:graduated_from => '医療センター',:graduated_year => '1990年',:specialism => '小児精神保育',:belong_conference => 'サンプル学会')
Doctor.create(:name => 'サンプルユーザ３',:graduated_from => 'medical central Center',:graduated_year => '2012年',:specialism => '小児外科',:belong_conference => 'なし')

DoctorLoginStatus.create(:doctor_id => '1',:is_login => 'false')
DoctorLoginStatus.create(:doctor_id => '2',:is_login => 'true')
DoctorLoginStatus.create(:doctor_id => '3',:is_login => 'false')
