# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "simplecov"
require "minitest/autorun"

require "gapic/grpc/service_stub"

require "google/cloud/recaptchaenterprise/v1/recaptchaenterprise_pb"
require "google/cloud/recaptchaenterprise/v1/recaptchaenterprise_services_pb"
require "google/cloud/recaptcha_enterprise/v1/recaptcha_enterprise_service"

class Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args
      @call_rpc_count += 1

      @requests << @block&.call(*args)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_assessment
    # Create GRPC objects.
    grpc_response = Google::Cloud::RecaptchaEnterprise::V1::Assessment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    assessment = {}

    create_assessment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_assessment, name
      assert_kind_of Google::Cloud::RecaptchaEnterprise::V1::CreateAssessmentRequest, request
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::RecaptchaEnterprise::V1::Assessment), request.assessment
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_assessment_client_stub do
      # Create client
      client = Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_assessment({ parent: parent, assessment: assessment }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_assessment parent: parent, assessment: assessment do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_assessment Google::Cloud::RecaptchaEnterprise::V1::CreateAssessmentRequest.new(parent: parent, assessment: assessment) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_assessment({ parent: parent, assessment: assessment }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_assessment Google::Cloud::RecaptchaEnterprise::V1::CreateAssessmentRequest.new(parent: parent, assessment: assessment), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_assessment_client_stub.call_rpc_count
    end
  end

  def test_annotate_assessment
    # Create GRPC objects.
    grpc_response = Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    annotation = :ANNOTATION_UNSPECIFIED

    annotate_assessment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :annotate_assessment, name
      assert_kind_of Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest, request
      assert_equal "hello world", request.name
      assert_equal :ANNOTATION_UNSPECIFIED, request.annotation
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, annotate_assessment_client_stub do
      # Create client
      client = Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.annotate_assessment({ name: name, annotation: annotation }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.annotate_assessment name: name, annotation: annotation do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.annotate_assessment Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest.new(name: name, annotation: annotation) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.annotate_assessment({ name: name, annotation: annotation }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.annotate_assessment Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest.new(name: name, annotation: annotation), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, annotate_assessment_client_stub.call_rpc_count
    end
  end

  def test_create_key
    # Create GRPC objects.
    grpc_response = Google::Cloud::RecaptchaEnterprise::V1::Key.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    key = {}

    create_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_key, name
      assert_kind_of Google::Cloud::RecaptchaEnterprise::V1::CreateKeyRequest, request
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::RecaptchaEnterprise::V1::Key), request.key
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_key_client_stub do
      # Create client
      client = Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_key({ parent: parent, key: key }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_key parent: parent, key: key do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_key Google::Cloud::RecaptchaEnterprise::V1::CreateKeyRequest.new(parent: parent, key: key) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_key({ parent: parent, key: key }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_key Google::Cloud::RecaptchaEnterprise::V1::CreateKeyRequest.new(parent: parent, key: key), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_key_client_stub.call_rpc_count
    end
  end

  def test_list_keys
    # Create GRPC objects.
    grpc_response = Google::Cloud::RecaptchaEnterprise::V1::ListKeysResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_keys_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_keys, name
      assert_kind_of Google::Cloud::RecaptchaEnterprise::V1::ListKeysRequest, request
      assert_equal "hello world", request.parent
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_keys_client_stub do
      # Create client
      client = Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_keys({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_keys parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_keys Google::Cloud::RecaptchaEnterprise::V1::ListKeysRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_keys({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_keys Google::Cloud::RecaptchaEnterprise::V1::ListKeysRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_keys_client_stub.call_rpc_count
    end
  end

  def test_get_key
    # Create GRPC objects.
    grpc_response = Google::Cloud::RecaptchaEnterprise::V1::Key.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_key, name
      assert_kind_of Google::Cloud::RecaptchaEnterprise::V1::GetKeyRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_key_client_stub do
      # Create client
      client = Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_key({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_key name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_key Google::Cloud::RecaptchaEnterprise::V1::GetKeyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_key({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_key Google::Cloud::RecaptchaEnterprise::V1::GetKeyRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_key_client_stub.call_rpc_count
    end
  end

  def test_update_key
    # Create GRPC objects.
    grpc_response = Google::Cloud::RecaptchaEnterprise::V1::Key.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    key = {}
    update_mask = {}

    update_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_key, name
      assert_kind_of Google::Cloud::RecaptchaEnterprise::V1::UpdateKeyRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::RecaptchaEnterprise::V1::Key), request.key
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.update_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_key_client_stub do
      # Create client
      client = Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_key({ key: key, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_key key: key, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_key Google::Cloud::RecaptchaEnterprise::V1::UpdateKeyRequest.new(key: key, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_key({ key: key, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_key Google::Cloud::RecaptchaEnterprise::V1::UpdateKeyRequest.new(key: key, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_key_client_stub.call_rpc_count
    end
  end

  def test_delete_key
    # Create GRPC objects.
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_key, name
      assert_kind_of Google::Cloud::RecaptchaEnterprise::V1::DeleteKeyRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_key_client_stub do
      # Create client
      client = Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_key({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_key name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_key Google::Cloud::RecaptchaEnterprise::V1::DeleteKeyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_key({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_key Google::Cloud::RecaptchaEnterprise::V1::DeleteKeyRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_key_client_stub.call_rpc_count
    end
  end
end