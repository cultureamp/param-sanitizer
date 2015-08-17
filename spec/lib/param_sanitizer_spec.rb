require 'spec_helper'

describe ParamSanitizer do

  let(:safe_params) do
    {
      name: '<b>jdoe</b>',
      parents: [
        '<i>Joe Hawes</i>',
        'Arma Hernandez'
      ],
      current_session: {
        id: '1978512',
        type: '<p>mobile</p>',
        last_login: {
          chrome: '2014-01-01'
        }
      }
    }
  end

  let(:unsafe_params) do
    {
      name: '<b>jdoe</b>',
      parents: [
        '<i onclick="xss()">Joe Hawes</i>',
        '<u>Arma Hernandez</u>'
      ],
      current_session: {
        id: '1978512',
        type: '<p>mobile</p><script>alert("xss")</script>',
        last_login: {
          chrome: '<u>2014-01-01</u>'
        }
      }
    }
  end

  subject do
    described_class.instance
  end

  it 'should sanitize input params' do
    subject.execute(unsafe_params)
    expect(unsafe_params).to eq safe_params
  end

end
