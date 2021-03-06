require 'rails_helper'

RSpec.describe "appointments/index", :type => :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :completed => false,
        :doctor_patient_id => 1
      ),
      Appointment.create!(
        :completed => false,
        :doctor_patient_id => 1
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
