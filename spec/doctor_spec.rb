require 'rspec'
require './lib/doctor'

describe Doctor do
  it "exists and has attributes" do
    doctor = {
      name:      "Meredith Grey",
      specialty: "General Surgery",
      education: "Harvard University",
      salary:    100_000
    }

    meredith = Doctor.new(doctor)

    expect(meredith).to be_an(Doctor)
    expect(meredith.name).to eq("Meredith Grey")
    expect(meredith.specialty).to eq("General Surgery")
    expect(meredith.education).to eq("Harvard University")
    expect(meredith.salary).to eq(100_000)
  end
end
