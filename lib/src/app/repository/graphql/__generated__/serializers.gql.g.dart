// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GAddressCreateInput.serializer)
      ..add(GAddressManyRelationFilter.serializer)
      ..add(GAddressOrderByInput.serializer)
      ..add(GAddressRelateToManyForCreateInput.serializer)
      ..add(GAddressRelateToManyForUpdateInput.serializer)
      ..add(GAddressRelateToOneForCreateInput.serializer)
      ..add(GAddressRelateToOneForUpdateInput.serializer)
      ..add(GAddressUpdateArgs.serializer)
      ..add(GAddressUpdateInput.serializer)
      ..add(GAddressWhereInput.serializer)
      ..add(GAddressWhereUniqueInput.serializer)
      ..add(GAppNotificationCreateInput.serializer)
      ..add(GAppNotificationOrderByInput.serializer)
      ..add(GAppNotificationTemplateCreateInput.serializer)
      ..add(GAppNotificationTemplateOrderByInput.serializer)
      ..add(GAppNotificationTemplateUpdateArgs.serializer)
      ..add(GAppNotificationTemplateUpdateInput.serializer)
      ..add(GAppNotificationTemplateWhereInput.serializer)
      ..add(GAppNotificationTemplateWhereUniqueInput.serializer)
      ..add(GAppNotificationUpdateArgs.serializer)
      ..add(GAppNotificationUpdateInput.serializer)
      ..add(GAppNotificationWhereInput.serializer)
      ..add(GAppNotificationWhereUniqueInput.serializer)
      ..add(GAppNotificationsData.serializer)
      ..add(GAppNotificationsData_appNotifications.serializer)
      ..add(GAppNotificationsData_appNotifications_notificationType.serializer)
      ..add(GAppNotificationsReq.serializer)
      ..add(GAppNotificationsVars.serializer)
      ..add(GAuthenticateUserWithPasswordData.serializer)
      ..add(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
              .serializer)
      ..add(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
              .serializer)
      ..add(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
              .serializer)
      ..add(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
              .serializer)
      ..add(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
              .serializer)
      ..add(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
              .serializer)
      ..add(GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
          .serializer)
      ..add(GAuthenticateUserWithPasswordReq.serializer)
      ..add(GAuthenticateUserWithPasswordVars.serializer)
      ..add(GBooleanFilter.serializer)
      ..add(GBrandCreateInput.serializer)
      ..add(GBrandOrderByInput.serializer)
      ..add(GBrandRelateToOneForCreateInput.serializer)
      ..add(GBrandRelateToOneForUpdateInput.serializer)
      ..add(GBrandUpdateArgs.serializer)
      ..add(GBrandUpdateInput.serializer)
      ..add(GBrandWhereInput.serializer)
      ..add(GBrandWhereUniqueInput.serializer)
      ..add(GCartItemCreateInput.serializer)
      ..add(GCartItemManyRelationFilter.serializer)
      ..add(GCartItemOrderByInput.serializer)
      ..add(GCartItemRelateToManyForCreateInput.serializer)
      ..add(GCartItemRelateToManyForUpdateInput.serializer)
      ..add(GCartItemUpdateArgs.serializer)
      ..add(GCartItemUpdateInput.serializer)
      ..add(GCartItemWhereInput.serializer)
      ..add(GCartItemWhereUniqueInput.serializer)
      ..add(GCategoriesData.serializer)
      ..add(GCategoriesData_categories.serializer)
      ..add(GCategoriesReq.serializer)
      ..add(GCategoriesVars.serializer)
      ..add(GCategoryCreateInput.serializer)
      ..add(GCategoryOrderByInput.serializer)
      ..add(GCategoryRelateToOneForCreateInput.serializer)
      ..add(GCategoryRelateToOneForUpdateInput.serializer)
      ..add(GCategoryUpdateArgs.serializer)
      ..add(GCategoryUpdateInput.serializer)
      ..add(GCategoryWhereInput.serializer)
      ..add(GCategoryWhereUniqueInput.serializer)
      ..add(GCouponCreateInput.serializer)
      ..add(GCouponItemType.serializer)
      ..add(GCouponOrderByInput.serializer)
      ..add(GCouponUpdateArgs.serializer)
      ..add(GCouponUpdateInput.serializer)
      ..add(GCouponWhereInput.serializer)
      ..add(GCouponWhereUniqueInput.serializer)
      ..add(GCreateDealerData.serializer)
      ..add(GCreateDealerData_createDealer.serializer)
      ..add(GCreateDealerReq.serializer)
      ..add(GCreateDealerVars.serializer)
      ..add(GCreateFeedbackData.serializer)
      ..add(GCreateFeedbackData_createFeedback.serializer)
      ..add(GCreateFeedbackReq.serializer)
      ..add(GCreateFeedbackVars.serializer)
      ..add(GCreateInitialUserInput.serializer)
      ..add(GCreateOrderRejectionByDealerData.serializer)
      ..add(GCreateOrderRejectionByDealerData_createOrderRejectionByDealer
          .serializer)
      ..add(GCreateOrderRejectionByDealerReq.serializer)
      ..add(GCreateOrderRejectionByDealerVars.serializer)
      ..add(GCreateReportData.serializer)
      ..add(GCreateReportData_createReport.serializer)
      ..add(GCreateReportReq.serializer)
      ..add(GCreateReportVars.serializer)
      ..add(GCreateUserData.serializer)
      ..add(GCreateUserData_createUser.serializer)
      ..add(GCreateUserReq.serializer)
      ..add(GCreateUserVars.serializer)
      ..add(GCreateVehicleDealerData.serializer)
      ..add(GCreateVehicleDealerData_createVehicleDealer.serializer)
      ..add(GCreateVehicleDealerReq.serializer)
      ..add(GCreateVehicleDealerStockRequestData.serializer)
      ..add(GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
          .serializer)
      ..add(GCreateVehicleDealerStockRequestReq.serializer)
      ..add(GCreateVehicleDealerStockRequestVars.serializer)
      ..add(GCreateVehicleDealerVars.serializer)
      ..add(GCurrentUserOTPData.serializer)
      ..add(GCurrentUserOTPReq.serializer)
      ..add(GCurrentUserOTPVars.serializer)
      ..add(GDateTime.serializer)
      ..add(GDateTimeNullableFilter.serializer)
      ..add(GDealerAddressCreateInput.serializer)
      ..add(GDealerAddressManyRelationFilter.serializer)
      ..add(GDealerAddressOrderByInput.serializer)
      ..add(GDealerAddressRelateToManyForCreateInput.serializer)
      ..add(GDealerAddressRelateToManyForUpdateInput.serializer)
      ..add(GDealerAddressUpdateArgs.serializer)
      ..add(GDealerAddressUpdateInput.serializer)
      ..add(GDealerAddressWhereInput.serializer)
      ..add(GDealerAddressWhereUniqueInput.serializer)
      ..add(GDealerCreateInput.serializer)
      ..add(GDealerData.serializer)
      ..add(GDealerData_dealers.serializer)
      ..add(GDealerOrderByInput.serializer)
      ..add(GDealerRelateToOneForCreateInput.serializer)
      ..add(GDealerRelateToOneForUpdateInput.serializer)
      ..add(GDealerReq.serializer)
      ..add(GDealerUpdateArgs.serializer)
      ..add(GDealerUpdateInput.serializer)
      ..add(GDealerVars.serializer)
      ..add(GDealerWhereInput.serializer)
      ..add(GDealerWhereUniqueInput.serializer)
      ..add(GEmailNotificationTemplateCreateInput.serializer)
      ..add(GEmailNotificationTemplateOrderByInput.serializer)
      ..add(GEmailNotificationTemplateUpdateArgs.serializer)
      ..add(GEmailNotificationTemplateUpdateInput.serializer)
      ..add(GEmailNotificationTemplateWhereInput.serializer)
      ..add(GEmailNotificationTemplateWhereUniqueInput.serializer)
      ..add(GExpertReviewCreateInput.serializer)
      ..add(GExpertReviewOrderByInput.serializer)
      ..add(GExpertReviewUpdateArgs.serializer)
      ..add(GExpertReviewUpdateInput.serializer)
      ..add(GExpertReviewWhereInput.serializer)
      ..add(GExpertReviewWhereUniqueInput.serializer)
      ..add(GFAQCreateInput.serializer)
      ..add(GFAQOrderByInput.serializer)
      ..add(GFAQUpdateArgs.serializer)
      ..add(GFAQUpdateInput.serializer)
      ..add(GFAQWhereInput.serializer)
      ..add(GFAQWhereUniqueInput.serializer)
      ..add(GFavoriteCreateInput.serializer)
      ..add(GFavoriteManyRelationFilter.serializer)
      ..add(GFavoriteOrderByInput.serializer)
      ..add(GFavoriteRelateToManyForCreateInput.serializer)
      ..add(GFavoriteRelateToManyForUpdateInput.serializer)
      ..add(GFavoriteUpdateArgs.serializer)
      ..add(GFavoriteUpdateInput.serializer)
      ..add(GFavoriteWhereInput.serializer)
      ..add(GFavoriteWhereUniqueInput.serializer)
      ..add(GFeedbackAttachmentCreateInput.serializer)
      ..add(GFeedbackAttachmentManyRelationFilter.serializer)
      ..add(GFeedbackAttachmentOrderByInput.serializer)
      ..add(GFeedbackAttachmentRelateToManyForCreateInput.serializer)
      ..add(GFeedbackAttachmentRelateToManyForUpdateInput.serializer)
      ..add(GFeedbackAttachmentUpdateArgs.serializer)
      ..add(GFeedbackAttachmentUpdateInput.serializer)
      ..add(GFeedbackAttachmentWhereInput.serializer)
      ..add(GFeedbackAttachmentWhereUniqueInput.serializer)
      ..add(GFeedbackCreateInput.serializer)
      ..add(GFeedbackOrderByInput.serializer)
      ..add(GFeedbackRelateToOneForCreateInput.serializer)
      ..add(GFeedbackRelateToOneForUpdateInput.serializer)
      ..add(GFeedbackUpdateArgs.serializer)
      ..add(GFeedbackUpdateInput.serializer)
      ..add(GFeedbackWhereInput.serializer)
      ..add(GFeedbackWhereUniqueInput.serializer)
      ..add(GFileFieldInput.serializer)
      ..add(GFloatFilter.serializer)
      ..add(GFloatNullableFilter.serializer)
      ..add(GGuaranteeCreateInput.serializer)
      ..add(GGuaranteeFileCreateInput.serializer)
      ..add(GGuaranteeFileOrderByInput.serializer)
      ..add(GGuaranteeFileUpdateArgs.serializer)
      ..add(GGuaranteeFileUpdateInput.serializer)
      ..add(GGuaranteeFileWhereInput.serializer)
      ..add(GGuaranteeFileWhereUniqueInput.serializer)
      ..add(GGuaranteeManyRelationFilter.serializer)
      ..add(GGuaranteeOrderByInput.serializer)
      ..add(GGuaranteeRelateToManyForCreateInput.serializer)
      ..add(GGuaranteeRelateToManyForUpdateInput.serializer)
      ..add(GGuaranteeUpdateArgs.serializer)
      ..add(GGuaranteeUpdateInput.serializer)
      ..add(GGuaranteeWhereInput.serializer)
      ..add(GGuaranteeWhereUniqueInput.serializer)
      ..add(GGuaranteesData.serializer)
      ..add(GGuaranteesData_guarantees.serializer)
      ..add(GGuaranteesReq.serializer)
      ..add(GGuaranteesVars.serializer)
      ..add(GHelpSupportCreateInput.serializer)
      ..add(GHelpSupportOrderByInput.serializer)
      ..add(GHelpSupportUpdateArgs.serializer)
      ..add(GHelpSupportUpdateInput.serializer)
      ..add(GHelpSupportWhereInput.serializer)
      ..add(GHelpSupportWhereUniqueInput.serializer)
      ..add(GIDFilter.serializer)
      ..add(GImageExtension.serializer)
      ..add(GImageFieldInput.serializer)
      ..add(GIntFilter.serializer)
      ..add(GIntNullableFilter.serializer)
      ..add(GItem.serializer)
      ..add(GKeystoneAdminUIFieldMetaCreateViewFieldMode.serializer)
      ..add(GKeystoneAdminUIFieldMetaItemViewFieldMode.serializer)
      ..add(GKeystoneAdminUIFieldMetaItemViewFieldPosition.serializer)
      ..add(GKeystoneAdminUIFieldMetaListViewFieldMode.serializer)
      ..add(GKeystoneAdminUISortDirection.serializer)
      ..add(GKeywordCreateInput.serializer)
      ..add(GKeywordManyRelationFilter.serializer)
      ..add(GKeywordOrderByInput.serializer)
      ..add(GKeywordRelateToManyForCreateInput.serializer)
      ..add(GKeywordRelateToManyForUpdateInput.serializer)
      ..add(GKeywordUpdateArgs.serializer)
      ..add(GKeywordUpdateInput.serializer)
      ..add(GKeywordWhereInput.serializer)
      ..add(GKeywordWhereUniqueInput.serializer)
      ..add(GNestedStringFilter.serializer)
      ..add(GNestedStringNullableFilter.serializer)
      ..add(GNewsAttachmentCreateInput.serializer)
      ..add(GNewsAttachmentManyRelationFilter.serializer)
      ..add(GNewsAttachmentOrderByInput.serializer)
      ..add(GNewsAttachmentRelateToManyForCreateInput.serializer)
      ..add(GNewsAttachmentRelateToManyForUpdateInput.serializer)
      ..add(GNewsAttachmentRelateToOneForCreateInput.serializer)
      ..add(GNewsAttachmentRelateToOneForUpdateInput.serializer)
      ..add(GNewsAttachmentUpdateArgs.serializer)
      ..add(GNewsAttachmentUpdateInput.serializer)
      ..add(GNewsAttachmentWhereInput.serializer)
      ..add(GNewsAttachmentWhereUniqueInput.serializer)
      ..add(GNewsCategoryCreateInput.serializer)
      ..add(GNewsCategoryManyRelationFilter.serializer)
      ..add(GNewsCategoryOrderByInput.serializer)
      ..add(GNewsCategoryRelateToManyForCreateInput.serializer)
      ..add(GNewsCategoryRelateToManyForUpdateInput.serializer)
      ..add(GNewsCategoryUpdateArgs.serializer)
      ..add(GNewsCategoryUpdateInput.serializer)
      ..add(GNewsCategoryWhereInput.serializer)
      ..add(GNewsCategoryWhereUniqueInput.serializer)
      ..add(GNewsItemCreateInput.serializer)
      ..add(GNewsItemOrderByInput.serializer)
      ..add(GNewsItemRelateToOneForCreateInput.serializer)
      ..add(GNewsItemRelateToOneForUpdateInput.serializer)
      ..add(GNewsItemUpdateArgs.serializer)
      ..add(GNewsItemUpdateInput.serializer)
      ..add(GNewsItemWhereInput.serializer)
      ..add(GNewsItemWhereUniqueInput.serializer)
      ..add(GNotificationTypeCreateInput.serializer)
      ..add(GNotificationTypeOrderByInput.serializer)
      ..add(GNotificationTypeRelateToOneForCreateInput.serializer)
      ..add(GNotificationTypeRelateToOneForUpdateInput.serializer)
      ..add(GNotificationTypeUpdateArgs.serializer)
      ..add(GNotificationTypeUpdateInput.serializer)
      ..add(GNotificationTypeWhereInput.serializer)
      ..add(GNotificationTypeWhereUniqueInput.serializer)
      ..add(GOfferCreateInput.serializer)
      ..add(GOfferOrderByInput.serializer)
      ..add(GOfferUpdateArgs.serializer)
      ..add(GOfferUpdateInput.serializer)
      ..add(GOfferWhereInput.serializer)
      ..add(GOfferWhereUniqueInput.serializer)
      ..add(GOrderCancellationRequestCreateInput.serializer)
      ..add(GOrderCancellationRequestOrderByInput.serializer)
      ..add(GOrderCancellationRequestUpdateArgs.serializer)
      ..add(GOrderCancellationRequestUpdateInput.serializer)
      ..add(GOrderCancellationRequestWhereInput.serializer)
      ..add(GOrderCancellationRequestWhereUniqueInput.serializer)
      ..add(GOrderCreateInput.serializer)
      ..add(GOrderDirection.serializer)
      ..add(GOrderItem.serializer)
      ..add(GOrderItemType.serializer)
      ..add(GOrderOrderByInput.serializer)
      ..add(GOrderRejectionByDealerCreateInput.serializer)
      ..add(GOrderRejectionByDealerOrderByInput.serializer)
      ..add(GOrderRejectionByDealerUpdateArgs.serializer)
      ..add(GOrderRejectionByDealerUpdateInput.serializer)
      ..add(GOrderRejectionByDealerWhereInput.serializer)
      ..add(GOrderRejectionByDealerWhereUniqueInput.serializer)
      ..add(GOrderRelateToOneForCreateInput.serializer)
      ..add(GOrderRelateToOneForUpdateInput.serializer)
      ..add(GOrderUpdateArgs.serializer)
      ..add(GOrderUpdateInput.serializer)
      ..add(GOrderWhereInput.serializer)
      ..add(GOrderWhereUniqueInput.serializer)
      ..add(GPasswordFilter.serializer)
      ..add(GPasswordResetRedemptionErrorCode.serializer)
      ..add(GPaymentCreateInput.serializer)
      ..add(GPaymentItem.serializer)
      ..add(GPaymentItemType.serializer)
      ..add(GPaymentManyRelationFilter.serializer)
      ..add(GPaymentOrderByInput.serializer)
      ..add(GPaymentRelateToManyForCreateInput.serializer)
      ..add(GPaymentRelateToManyForUpdateInput.serializer)
      ..add(GPaymentUpdateArgs.serializer)
      ..add(GPaymentUpdateInput.serializer)
      ..add(GPaymentWhereInput.serializer)
      ..add(GPaymentWhereUniqueInput.serializer)
      ..add(GPriceCategoriesData.serializer)
      ..add(GPriceCategoriesData_priceCategories.serializer)
      ..add(GPriceCategoriesReq.serializer)
      ..add(GPriceCategoriesVars.serializer)
      ..add(GPriceCategoryCreateInput.serializer)
      ..add(GPriceCategoryOrderByInput.serializer)
      ..add(GPriceCategoryRelateToOneForCreateInput.serializer)
      ..add(GPriceCategoryRelateToOneForUpdateInput.serializer)
      ..add(GPriceCategoryUpdateArgs.serializer)
      ..add(GPriceCategoryUpdateInput.serializer)
      ..add(GPriceCategoryWhereInput.serializer)
      ..add(GPriceCategoryWhereUniqueInput.serializer)
      ..add(GPriceCreateInput.serializer)
      ..add(GPriceManyRelationFilter.serializer)
      ..add(GPriceOrderByInput.serializer)
      ..add(GPriceRelateToManyForCreateInput.serializer)
      ..add(GPriceRelateToManyForUpdateInput.serializer)
      ..add(GPriceUpdateArgs.serializer)
      ..add(GPriceUpdateInput.serializer)
      ..add(GPriceWhereInput.serializer)
      ..add(GPriceWhereUniqueInput.serializer)
      ..add(GProductCreateInput.serializer)
      ..add(GProductDealerCreateInput.serializer)
      ..add(GProductDealerOrderByInput.serializer)
      ..add(GProductDealerRelateToOneForCreateInput.serializer)
      ..add(GProductDealerRelateToOneForUpdateInput.serializer)
      ..add(GProductDealerStockRequestCreateInput.serializer)
      ..add(GProductDealerStockRequestOrderByInput.serializer)
      ..add(GProductDealerStockRequestUpdateArgs.serializer)
      ..add(GProductDealerStockRequestUpdateInput.serializer)
      ..add(GProductDealerStockRequestWhereInput.serializer)
      ..add(GProductDealerStockRequestWhereUniqueInput.serializer)
      ..add(GProductDealerUpdateArgs.serializer)
      ..add(GProductDealerUpdateInput.serializer)
      ..add(GProductDealerWhereInput.serializer)
      ..add(GProductDealerWhereUniqueInput.serializer)
      ..add(GProductGalleryItemCreateInput.serializer)
      ..add(GProductGalleryItemManyRelationFilter.serializer)
      ..add(GProductGalleryItemOrderByInput.serializer)
      ..add(GProductGalleryItemRelateToManyForCreateInput.serializer)
      ..add(GProductGalleryItemRelateToManyForUpdateInput.serializer)
      ..add(GProductGalleryItemUpdateArgs.serializer)
      ..add(GProductGalleryItemUpdateInput.serializer)
      ..add(GProductGalleryItemWhereInput.serializer)
      ..add(GProductGalleryItemWhereUniqueInput.serializer)
      ..add(GProductImageCreateInput.serializer)
      ..add(GProductImageManyRelationFilter.serializer)
      ..add(GProductImageOrderByInput.serializer)
      ..add(GProductImageRelateToManyForCreateInput.serializer)
      ..add(GProductImageRelateToManyForUpdateInput.serializer)
      ..add(GProductImageUpdateArgs.serializer)
      ..add(GProductImageUpdateInput.serializer)
      ..add(GProductImageWhereInput.serializer)
      ..add(GProductImageWhereUniqueInput.serializer)
      ..add(GProductManyRelationFilter.serializer)
      ..add(GProductOrderByInput.serializer)
      ..add(GProductOrderCreateInput.serializer)
      ..add(GProductOrderManyRelationFilter.serializer)
      ..add(GProductOrderOrderByInput.serializer)
      ..add(GProductOrderRelateToManyForCreateInput.serializer)
      ..add(GProductOrderRelateToManyForUpdateInput.serializer)
      ..add(GProductOrderUpdateArgs.serializer)
      ..add(GProductOrderUpdateInput.serializer)
      ..add(GProductOrderWhereInput.serializer)
      ..add(GProductOrderWhereUniqueInput.serializer)
      ..add(GProductOrdersData.serializer)
      ..add(GProductOrdersData_productOrders.serializer)
      ..add(GProductOrdersData_productOrders_dealer.serializer)
      ..add(GProductOrdersData_productOrders_dealer_dealer.serializer)
      ..add(GProductOrdersData_productOrders_dealer_prices.serializer)
      ..add(GProductOrdersData_productOrders_dealer_prices_category.serializer)
      ..add(GProductOrdersData_productOrders_dealer_productVariant.serializer)
      ..add(GProductOrdersData_productOrders_dealer_productVariant_product
          .serializer)
      ..add(GProductOrdersData_productOrders_order.serializer)
      ..add(GProductOrdersData_productOrders_order_user.serializer)
      ..add(GProductOrdersData_productOrders_order_user_addresses.serializer)
      ..add(GProductOrdersReq.serializer)
      ..add(GProductOrdersVars.serializer)
      ..add(GProductReelCreateInput.serializer)
      ..add(GProductReelManyRelationFilter.serializer)
      ..add(GProductReelOrderByInput.serializer)
      ..add(GProductReelRelateToManyForCreateInput.serializer)
      ..add(GProductReelRelateToManyForUpdateInput.serializer)
      ..add(GProductReelUpdateArgs.serializer)
      ..add(GProductReelUpdateInput.serializer)
      ..add(GProductReelWhereInput.serializer)
      ..add(GProductReelWhereUniqueInput.serializer)
      ..add(GProductRelateToManyForCreateInput.serializer)
      ..add(GProductRelateToManyForUpdateInput.serializer)
      ..add(GProductRelateToOneForCreateInput.serializer)
      ..add(GProductRelateToOneForUpdateInput.serializer)
      ..add(GProductSpecificationCreateInput.serializer)
      ..add(GProductSpecificationManyRelationFilter.serializer)
      ..add(GProductSpecificationOrderByInput.serializer)
      ..add(GProductSpecificationRelateToManyForCreateInput.serializer)
      ..add(GProductSpecificationRelateToManyForUpdateInput.serializer)
      ..add(GProductSpecificationUpdateArgs.serializer)
      ..add(GProductSpecificationUpdateInput.serializer)
      ..add(GProductSpecificationWhereInput.serializer)
      ..add(GProductSpecificationWhereUniqueInput.serializer)
      ..add(GProductTypeCreateInput.serializer)
      ..add(GProductTypeOrderByInput.serializer)
      ..add(GProductTypeRelateToOneForCreateInput.serializer)
      ..add(GProductTypeRelateToOneForUpdateInput.serializer)
      ..add(GProductTypeUpdateArgs.serializer)
      ..add(GProductTypeUpdateInput.serializer)
      ..add(GProductTypeWhereInput.serializer)
      ..add(GProductTypeWhereUniqueInput.serializer)
      ..add(GProductTypesData.serializer)
      ..add(GProductTypesData_productTypes.serializer)
      ..add(GProductTypesReq.serializer)
      ..add(GProductTypesVars.serializer)
      ..add(GProductUpdateArgs.serializer)
      ..add(GProductUpdateInput.serializer)
      ..add(GProductVariantCreateInput.serializer)
      ..add(GProductVariantData.serializer)
      ..add(GProductVariantData_productVariant.serializer)
      ..add(GProductVariantData_productVariant_gallery.serializer)
      ..add(GProductVariantData_productVariant_images.serializer)
      ..add(GProductVariantData_productVariant_images_image.serializer)
      ..add(GProductVariantData_productVariant_prices.serializer)
      ..add(GProductVariantData_productVariant_prices_category.serializer)
      ..add(GProductVariantData_productVariant_product.serializer)
      ..add(GProductVariantData_productVariant_product_brand.serializer)
      ..add(GProductVariantData_productVariant_product_brand_logo.serializer)
      ..add(
          GProductVariantData_productVariant_product_specifications.serializer)
      ..add(GProductVariantData_productVariant_product_specifications_category
          .serializer)
      ..add(
          GProductVariantData_productVariant_product_specifications_specification
              .serializer)
      ..add(
          GProductVariantData_productVariant_product_specifications_specification_image
              .serializer)
      ..add(GProductVariantData_productVariant_product_type.serializer)
      ..add(GProductVariantData_productVariant_specifications.serializer)
      ..add(
          GProductVariantData_productVariant_specifications_category.serializer)
      ..add(GProductVariantData_productVariant_specifications_specification
          .serializer)
      ..add(
          GProductVariantData_productVariant_specifications_specification_image
              .serializer)
      ..add(GProductVariantData_productVariant_tags.serializer)
      ..add(GProductVariantManyRelationFilter.serializer)
      ..add(GProductVariantOrderByInput.serializer)
      ..add(GProductVariantRelateToManyForCreateInput.serializer)
      ..add(GProductVariantRelateToManyForUpdateInput.serializer)
      ..add(GProductVariantRelateToOneForCreateInput.serializer)
      ..add(GProductVariantRelateToOneForUpdateInput.serializer)
      ..add(GProductVariantReq.serializer)
      ..add(GProductVariantUpdateArgs.serializer)
      ..add(GProductVariantUpdateInput.serializer)
      ..add(GProductVariantVars.serializer)
      ..add(GProductVariantWhereInput.serializer)
      ..add(GProductVariantWhereUniqueInput.serializer)
      ..add(GProductVariantsCountData.serializer)
      ..add(GProductVariantsCountReq.serializer)
      ..add(GProductVariantsCountVars.serializer)
      ..add(GProductVariantsData.serializer)
      ..add(GProductVariantsData_productVariants.serializer)
      ..add(GProductVariantsData_productVariants_gallery.serializer)
      ..add(GProductVariantsData_productVariants_images.serializer)
      ..add(GProductVariantsData_productVariants_images_image.serializer)
      ..add(GProductVariantsData_productVariants_prices.serializer)
      ..add(GProductVariantsData_productVariants_prices_category.serializer)
      ..add(GProductVariantsData_productVariants_product.serializer)
      ..add(GProductVariantsData_productVariants_product_brand.serializer)
      ..add(GProductVariantsData_productVariants_product_brand_logo.serializer)
      ..add(GProductVariantsData_productVariants_product_specifications
          .serializer)
      ..add(GProductVariantsData_productVariants_product_specifications_category
          .serializer)
      ..add(
          GProductVariantsData_productVariants_product_specifications_specification
              .serializer)
      ..add(
          GProductVariantsData_productVariants_product_specifications_specification_image
              .serializer)
      ..add(GProductVariantsData_productVariants_product_type.serializer)
      ..add(GProductVariantsData_productVariants_specifications.serializer)
      ..add(GProductVariantsData_productVariants_specifications_category
          .serializer)
      ..add(GProductVariantsData_productVariants_specifications_specification
          .serializer)
      ..add(
          GProductVariantsData_productVariants_specifications_specification_image
              .serializer)
      ..add(GProductVariantsData_productVariants_tags.serializer)
      ..add(GProductVariantsReq.serializer)
      ..add(GProductVariantsVars.serializer)
      ..add(GProductVideoCreateInput.serializer)
      ..add(GProductVideoManyRelationFilter.serializer)
      ..add(GProductVideoOrderByInput.serializer)
      ..add(GProductVideoRelateToManyForCreateInput.serializer)
      ..add(GProductVideoRelateToManyForUpdateInput.serializer)
      ..add(GProductVideoUpdateArgs.serializer)
      ..add(GProductVideoUpdateInput.serializer)
      ..add(GProductVideoWhereInput.serializer)
      ..add(GProductVideoWhereUniqueInput.serializer)
      ..add(GProductWhereInput.serializer)
      ..add(GProductWhereUniqueInput.serializer)
      ..add(GQueryMode.serializer)
      ..add(GRedeemUserPasswordResetTokenData.serializer)
      ..add(GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken
          .serializer)
      ..add(GRedeemUserPasswordResetTokenReq.serializer)
      ..add(GRedeemUserPasswordResetTokenVars.serializer)
      ..add(GReferralCodeCreateInput.serializer)
      ..add(GReferralCodeOrderByInput.serializer)
      ..add(GReferralCodeRelateToOneForCreateInput.serializer)
      ..add(GReferralCodeRelateToOneForUpdateInput.serializer)
      ..add(GReferralCodeUpdateArgs.serializer)
      ..add(GReferralCodeUpdateInput.serializer)
      ..add(GReferralCodeWhereInput.serializer)
      ..add(GReferralCodeWhereUniqueInput.serializer)
      ..add(GReferralUserCreateInput.serializer)
      ..add(GReferralUserOrderByInput.serializer)
      ..add(GReferralUserUpdateArgs.serializer)
      ..add(GReferralUserUpdateInput.serializer)
      ..add(GReferralUserWhereInput.serializer)
      ..add(GReferralUserWhereUniqueInput.serializer)
      ..add(GReportAttachmentCreateInput.serializer)
      ..add(GReportAttachmentManyRelationFilter.serializer)
      ..add(GReportAttachmentOrderByInput.serializer)
      ..add(GReportAttachmentRelateToManyForCreateInput.serializer)
      ..add(GReportAttachmentRelateToManyForUpdateInput.serializer)
      ..add(GReportAttachmentUpdateArgs.serializer)
      ..add(GReportAttachmentUpdateInput.serializer)
      ..add(GReportAttachmentWhereInput.serializer)
      ..add(GReportAttachmentWhereUniqueInput.serializer)
      ..add(GReportCreateInput.serializer)
      ..add(GReportOrderByInput.serializer)
      ..add(GReportRelateToOneForCreateInput.serializer)
      ..add(GReportRelateToOneForUpdateInput.serializer)
      ..add(GReportUpdateArgs.serializer)
      ..add(GReportUpdateInput.serializer)
      ..add(GReportWhereInput.serializer)
      ..add(GReportWhereUniqueInput.serializer)
      ..add(GSMSNotificationTemplateCreateInput.serializer)
      ..add(GSMSNotificationTemplateOrderByInput.serializer)
      ..add(GSMSNotificationTemplateUpdateArgs.serializer)
      ..add(GSMSNotificationTemplateUpdateInput.serializer)
      ..add(GSMSNotificationTemplateWhereInput.serializer)
      ..add(GSMSNotificationTemplateWhereUniqueInput.serializer)
      ..add(GSendUserPasswordResetLinkData.serializer)
      ..add(GSendUserPasswordResetLinkReq.serializer)
      ..add(GSendUserPasswordResetLinkVars.serializer)
      ..add(GSpecificationCategoryCreateInput.serializer)
      ..add(GSpecificationCategoryOrderByInput.serializer)
      ..add(GSpecificationCategoryRelateToOneForCreateInput.serializer)
      ..add(GSpecificationCategoryRelateToOneForUpdateInput.serializer)
      ..add(GSpecificationCategoryUpdateArgs.serializer)
      ..add(GSpecificationCategoryUpdateInput.serializer)
      ..add(GSpecificationCategoryWhereInput.serializer)
      ..add(GSpecificationCategoryWhereUniqueInput.serializer)
      ..add(GSpecificationCreateInput.serializer)
      ..add(GSpecificationOrderByInput.serializer)
      ..add(GSpecificationRelateToOneForCreateInput.serializer)
      ..add(GSpecificationRelateToOneForUpdateInput.serializer)
      ..add(GSpecificationUpdateArgs.serializer)
      ..add(GSpecificationUpdateInput.serializer)
      ..add(GSpecificationWhereInput.serializer)
      ..add(GSpecificationWhereUniqueInput.serializer)
      ..add(GStringFilter.serializer)
      ..add(GStringNullableFilter.serializer)
      ..add(GTagCreateInput.serializer)
      ..add(GTagManyRelationFilter.serializer)
      ..add(GTagOrderByInput.serializer)
      ..add(GTagRelateToManyForCreateInput.serializer)
      ..add(GTagRelateToManyForUpdateInput.serializer)
      ..add(GTagUpdateArgs.serializer)
      ..add(GTagUpdateInput.serializer)
      ..add(GTagWhereInput.serializer)
      ..add(GTagWhereUniqueInput.serializer)
      ..add(GTestDriveDealerCreateInput.serializer)
      ..add(GTestDriveDealerOrderByInput.serializer)
      ..add(GTestDriveDealerRelateToOneForCreateInput.serializer)
      ..add(GTestDriveDealerRelateToOneForUpdateInput.serializer)
      ..add(GTestDriveDealerUpdateArgs.serializer)
      ..add(GTestDriveDealerUpdateInput.serializer)
      ..add(GTestDriveDealerWhereInput.serializer)
      ..add(GTestDriveDealerWhereUniqueInput.serializer)
      ..add(GTestDriveOrderCreateInput.serializer)
      ..add(GTestDriveOrderManyRelationFilter.serializer)
      ..add(GTestDriveOrderOrderByInput.serializer)
      ..add(GTestDriveOrderRelateToManyForCreateInput.serializer)
      ..add(GTestDriveOrderRelateToManyForUpdateInput.serializer)
      ..add(GTestDriveOrderUpdateArgs.serializer)
      ..add(GTestDriveOrderUpdateInput.serializer)
      ..add(GTestDriveOrderWhereInput.serializer)
      ..add(GTestDriveOrderWhereUniqueInput.serializer)
      ..add(GTestDriveOrdersData.serializer)
      ..add(GTestDriveOrdersData_testDriveOrders.serializer)
      ..add(GTestDriveOrdersData_testDriveOrders_dealer.serializer)
      ..add(GTestDriveOrdersData_testDriveOrders_dealer_dealer.serializer)
      ..add(GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor.serializer)
      ..add(GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images
          .serializer)
      ..add(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
              .serializer)
      ..add(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant.serializer)
      ..add(GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
          .serializer)
      ..add(GTestDriveOrdersData_testDriveOrders_order.serializer)
      ..add(GTestDriveOrdersData_testDriveOrders_order_user.serializer)
      ..add(
          GTestDriveOrdersData_testDriveOrders_order_user_addresses.serializer)
      ..add(GTestDriveOrdersReq.serializer)
      ..add(GTestDriveOrdersVars.serializer)
      ..add(GUpdatePricesData.serializer)
      ..add(GUpdatePricesData_updatePrices.serializer)
      ..add(GUpdatePricesReq.serializer)
      ..add(GUpdatePricesVars.serializer)
      ..add(GUpdateProductOrderData.serializer)
      ..add(GUpdateProductOrderData_updateProductOrder.serializer)
      ..add(GUpdateProductOrderReq.serializer)
      ..add(GUpdateProductOrderVars.serializer)
      ..add(GUpdateTestDriveOrderData.serializer)
      ..add(GUpdateTestDriveOrderData_updateTestDriveOrder.serializer)
      ..add(GUpdateTestDriveOrderReq.serializer)
      ..add(GUpdateTestDriveOrderVars.serializer)
      ..add(GUpdateUserData.serializer)
      ..add(GUpdateUserData_updateUser.serializer)
      ..add(GUpdateUserReq.serializer)
      ..add(GUpdateUserVars.serializer)
      ..add(GUpdateVehicleDealerData.serializer)
      ..add(GUpdateVehicleDealerData_updateVehicleDealer.serializer)
      ..add(GUpdateVehicleDealerData_updateVehicleDealer_guarantees.serializer)
      ..add(GUpdateVehicleDealerData_updateVehicleDealer_prices.serializer)
      ..add(GUpdateVehicleDealerData_updateVehicleDealer_prices_category
          .serializer)
      ..add(
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor.serializer)
      ..add(GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images
          .serializer)
      ..add(
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image
              .serializer)
      ..add(GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant
          .serializer)
      ..add(GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle
          .serializer)
      ..add(
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand
              .serializer)
      ..add(GUpdateVehicleDealerReq.serializer)
      ..add(GUpdateVehicleDealerVars.serializer)
      ..add(GUpdateVehicleOrderData.serializer)
      ..add(GUpdateVehicleOrderData_updateVehicleOrder.serializer)
      ..add(GUpdateVehicleOrderReq.serializer)
      ..add(GUpdateVehicleOrderVars.serializer)
      ..add(GUserCreateInput.serializer)
      ..add(GUserData.serializer)
      ..add(GUserData_user.serializer)
      ..add(GUserData_user_aadhaar.serializer)
      ..add(GUserData_user_addresses.serializer)
      ..add(GUserData_user_driving_license.serializer)
      ..add(GUserData_user_favorites.serializer)
      ..add(GUserData_user_favorites_vehicleVariant.serializer)
      ..add(GUserData_user_profile_image.serializer)
      ..add(GUserData_user_referralCode.serializer)
      ..add(GUserOrderByInput.serializer)
      ..add(GUserProductReviewAttachmentCreateInput.serializer)
      ..add(GUserProductReviewAttachmentManyRelationFilter.serializer)
      ..add(GUserProductReviewAttachmentOrderByInput.serializer)
      ..add(GUserProductReviewAttachmentRelateToManyForCreateInput.serializer)
      ..add(GUserProductReviewAttachmentRelateToManyForUpdateInput.serializer)
      ..add(GUserProductReviewAttachmentUpdateArgs.serializer)
      ..add(GUserProductReviewAttachmentUpdateInput.serializer)
      ..add(GUserProductReviewAttachmentWhereInput.serializer)
      ..add(GUserProductReviewAttachmentWhereUniqueInput.serializer)
      ..add(GUserProductReviewCreateInput.serializer)
      ..add(GUserProductReviewOrderByInput.serializer)
      ..add(GUserProductReviewRelateToOneForCreateInput.serializer)
      ..add(GUserProductReviewRelateToOneForUpdateInput.serializer)
      ..add(GUserProductReviewUpdateArgs.serializer)
      ..add(GUserProductReviewUpdateInput.serializer)
      ..add(GUserProductReviewWhereInput.serializer)
      ..add(GUserProductReviewWhereUniqueInput.serializer)
      ..add(GUserRelateToOneForCreateInput.serializer)
      ..add(GUserRelateToOneForUpdateInput.serializer)
      ..add(GUserReq.serializer)
      ..add(GUserUpdateArgs.serializer)
      ..add(GUserUpdateInput.serializer)
      ..add(GUserVars.serializer)
      ..add(GUserVehicleReviewAttachmentCreateInput.serializer)
      ..add(GUserVehicleReviewAttachmentManyRelationFilter.serializer)
      ..add(GUserVehicleReviewAttachmentOrderByInput.serializer)
      ..add(GUserVehicleReviewAttachmentRelateToManyForCreateInput.serializer)
      ..add(GUserVehicleReviewAttachmentRelateToManyForUpdateInput.serializer)
      ..add(GUserVehicleReviewAttachmentUpdateArgs.serializer)
      ..add(GUserVehicleReviewAttachmentUpdateInput.serializer)
      ..add(GUserVehicleReviewAttachmentWhereInput.serializer)
      ..add(GUserVehicleReviewAttachmentWhereUniqueInput.serializer)
      ..add(GUserVehicleReviewCreateInput.serializer)
      ..add(GUserVehicleReviewOrderByInput.serializer)
      ..add(GUserVehicleReviewRelateToOneForCreateInput.serializer)
      ..add(GUserVehicleReviewRelateToOneForUpdateInput.serializer)
      ..add(GUserVehicleReviewUpdateArgs.serializer)
      ..add(GUserVehicleReviewUpdateInput.serializer)
      ..add(GUserVehicleReviewWhereInput.serializer)
      ..add(GUserVehicleReviewWhereUniqueInput.serializer)
      ..add(GUserWhereInput.serializer)
      ..add(GUserWhereUniqueInput.serializer)
      ..add(GValidateUserOTPData.serializer)
      ..add(GValidateUserOTPReq.serializer)
      ..add(GValidateUserOTPVars.serializer)
      ..add(GValidateUserPasswordResetTokenData.serializer)
      ..add(GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
          .serializer)
      ..add(GValidateUserPasswordResetTokenReq.serializer)
      ..add(GValidateUserPasswordResetTokenVars.serializer)
      ..add(GVehicleColorCreateInput.serializer)
      ..add(GVehicleColorManyRelationFilter.serializer)
      ..add(GVehicleColorOrderByInput.serializer)
      ..add(GVehicleColorRelateToManyForCreateInput.serializer)
      ..add(GVehicleColorRelateToManyForUpdateInput.serializer)
      ..add(GVehicleColorRelateToOneForCreateInput.serializer)
      ..add(GVehicleColorRelateToOneForUpdateInput.serializer)
      ..add(GVehicleColorUpdateArgs.serializer)
      ..add(GVehicleColorUpdateInput.serializer)
      ..add(GVehicleColorWhereInput.serializer)
      ..add(GVehicleColorWhereUniqueInput.serializer)
      ..add(GVehicleCreateInput.serializer)
      ..add(GVehicleDealerCreateInput.serializer)
      ..add(GVehicleDealerOrderByInput.serializer)
      ..add(GVehicleDealerRelateToOneForCreateInput.serializer)
      ..add(GVehicleDealerRelateToOneForUpdateInput.serializer)
      ..add(GVehicleDealerStockRequestCreateInput.serializer)
      ..add(GVehicleDealerStockRequestOrderByInput.serializer)
      ..add(GVehicleDealerStockRequestUpdateArgs.serializer)
      ..add(GVehicleDealerStockRequestUpdateInput.serializer)
      ..add(GVehicleDealerStockRequestWhereInput.serializer)
      ..add(GVehicleDealerStockRequestWhereUniqueInput.serializer)
      ..add(GVehicleDealerUpdateArgs.serializer)
      ..add(GVehicleDealerUpdateInput.serializer)
      ..add(GVehicleDealerWhereInput.serializer)
      ..add(GVehicleDealerWhereUniqueInput.serializer)
      ..add(GVehicleDealersData.serializer)
      ..add(GVehicleDealersData_vehicleDealers.serializer)
      ..add(GVehicleDealersData_vehicleDealers_guarantees.serializer)
      ..add(GVehicleDealersData_vehicleDealers_prices.serializer)
      ..add(GVehicleDealersData_vehicleDealers_prices_category.serializer)
      ..add(GVehicleDealersData_vehicleDealers_vehicleColor.serializer)
      ..add(GVehicleDealersData_vehicleDealers_vehicleColor_images.serializer)
      ..add(GVehicleDealersData_vehicleDealers_vehicleColor_images_image
          .serializer)
      ..add(GVehicleDealersData_vehicleDealers_vehicleVariant.serializer)
      ..add(
          GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle.serializer)
      ..add(GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand
          .serializer)
      ..add(GVehicleDealersReq.serializer)
      ..add(GVehicleDealersVars.serializer)
      ..add(GVehicleGalleryItemCreateInput.serializer)
      ..add(GVehicleGalleryItemManyRelationFilter.serializer)
      ..add(GVehicleGalleryItemOrderByInput.serializer)
      ..add(GVehicleGalleryItemRelateToManyForCreateInput.serializer)
      ..add(GVehicleGalleryItemRelateToManyForUpdateInput.serializer)
      ..add(GVehicleGalleryItemUpdateArgs.serializer)
      ..add(GVehicleGalleryItemUpdateInput.serializer)
      ..add(GVehicleGalleryItemWhereInput.serializer)
      ..add(GVehicleGalleryItemWhereUniqueInput.serializer)
      ..add(GVehicleImageCreateInput.serializer)
      ..add(GVehicleImageManyRelationFilter.serializer)
      ..add(GVehicleImageOrderByInput.serializer)
      ..add(GVehicleImageRelateToManyForCreateInput.serializer)
      ..add(GVehicleImageRelateToManyForUpdateInput.serializer)
      ..add(GVehicleImageUpdateArgs.serializer)
      ..add(GVehicleImageUpdateInput.serializer)
      ..add(GVehicleImageWhereInput.serializer)
      ..add(GVehicleImageWhereUniqueInput.serializer)
      ..add(GVehicleManyRelationFilter.serializer)
      ..add(GVehicleOrderAdditionalInfoCreateInput.serializer)
      ..add(GVehicleOrderAdditionalInfoOrderByInput.serializer)
      ..add(GVehicleOrderAdditionalInfoRelateToOneForCreateInput.serializer)
      ..add(GVehicleOrderAdditionalInfoRelateToOneForUpdateInput.serializer)
      ..add(GVehicleOrderAdditionalInfoUpdateArgs.serializer)
      ..add(GVehicleOrderAdditionalInfoUpdateInput.serializer)
      ..add(GVehicleOrderAdditionalInfoWhereInput.serializer)
      ..add(GVehicleOrderAdditionalInfoWhereUniqueInput.serializer)
      ..add(GVehicleOrderByInput.serializer)
      ..add(GVehicleOrderCreateInput.serializer)
      ..add(GVehicleOrderManyRelationFilter.serializer)
      ..add(GVehicleOrderOrderByInput.serializer)
      ..add(GVehicleOrderRelateToManyForCreateInput.serializer)
      ..add(GVehicleOrderRelateToManyForUpdateInput.serializer)
      ..add(GVehicleOrderUpdateArgs.serializer)
      ..add(GVehicleOrderUpdateInput.serializer)
      ..add(GVehicleOrderWhereInput.serializer)
      ..add(GVehicleOrderWhereUniqueInput.serializer)
      ..add(GVehicleOrdersData.serializer)
      ..add(GVehicleOrdersData_vehicleOrders.serializer)
      ..add(GVehicleOrdersData_vehicleOrders_dealer.serializer)
      ..add(GVehicleOrdersData_vehicleOrders_dealer_dealer.serializer)
      ..add(GVehicleOrdersData_vehicleOrders_dealer_prices.serializer)
      ..add(GVehicleOrdersData_vehicleOrders_dealer_prices_category.serializer)
      ..add(GVehicleOrdersData_vehicleOrders_dealer_vehicleColor.serializer)
      ..add(GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images
          .serializer)
      ..add(GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image
          .serializer)
      ..add(GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant.serializer)
      ..add(GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle
          .serializer)
      ..add(GVehicleOrdersData_vehicleOrders_order.serializer)
      ..add(GVehicleOrdersData_vehicleOrders_order_user.serializer)
      ..add(GVehicleOrdersData_vehicleOrders_order_user_addresses.serializer)
      ..add(GVehicleOrdersReq.serializer)
      ..add(GVehicleOrdersVars.serializer)
      ..add(GVehicleReelCreateInput.serializer)
      ..add(GVehicleReelManyRelationFilter.serializer)
      ..add(GVehicleReelOrderByInput.serializer)
      ..add(GVehicleReelRelateToManyForCreateInput.serializer)
      ..add(GVehicleReelRelateToManyForUpdateInput.serializer)
      ..add(GVehicleReelUpdateArgs.serializer)
      ..add(GVehicleReelUpdateInput.serializer)
      ..add(GVehicleReelWhereInput.serializer)
      ..add(GVehicleReelWhereUniqueInput.serializer)
      ..add(GVehicleRelateToManyForCreateInput.serializer)
      ..add(GVehicleRelateToManyForUpdateInput.serializer)
      ..add(GVehicleRelateToOneForCreateInput.serializer)
      ..add(GVehicleRelateToOneForUpdateInput.serializer)
      ..add(GVehicleSpecificationCreateInput.serializer)
      ..add(GVehicleSpecificationManyRelationFilter.serializer)
      ..add(GVehicleSpecificationOrderByInput.serializer)
      ..add(GVehicleSpecificationRelateToManyForCreateInput.serializer)
      ..add(GVehicleSpecificationRelateToManyForUpdateInput.serializer)
      ..add(GVehicleSpecificationUpdateArgs.serializer)
      ..add(GVehicleSpecificationUpdateInput.serializer)
      ..add(GVehicleSpecificationWhereInput.serializer)
      ..add(GVehicleSpecificationWhereUniqueInput.serializer)
      ..add(GVehicleSubTypeCreateInput.serializer)
      ..add(GVehicleSubTypeManyRelationFilter.serializer)
      ..add(GVehicleSubTypeOrderByInput.serializer)
      ..add(GVehicleSubTypeRelateToManyForCreateInput.serializer)
      ..add(GVehicleSubTypeRelateToManyForUpdateInput.serializer)
      ..add(GVehicleSubTypeUpdateArgs.serializer)
      ..add(GVehicleSubTypeUpdateInput.serializer)
      ..add(GVehicleSubTypeWhereInput.serializer)
      ..add(GVehicleSubTypeWhereUniqueInput.serializer)
      ..add(GVehicleTypeCreateInput.serializer)
      ..add(GVehicleTypeOrderByInput.serializer)
      ..add(GVehicleTypeRelateToOneForCreateInput.serializer)
      ..add(GVehicleTypeRelateToOneForUpdateInput.serializer)
      ..add(GVehicleTypeUpdateArgs.serializer)
      ..add(GVehicleTypeUpdateInput.serializer)
      ..add(GVehicleTypeWhereInput.serializer)
      ..add(GVehicleTypeWhereUniqueInput.serializer)
      ..add(GVehicleUpdateArgs.serializer)
      ..add(GVehicleUpdateInput.serializer)
      ..add(GVehicleVariantCreateInput.serializer)
      ..add(GVehicleVariantManyRelationFilter.serializer)
      ..add(GVehicleVariantOrderByInput.serializer)
      ..add(GVehicleVariantRelateToManyForCreateInput.serializer)
      ..add(GVehicleVariantRelateToManyForUpdateInput.serializer)
      ..add(GVehicleVariantRelateToOneForCreateInput.serializer)
      ..add(GVehicleVariantRelateToOneForUpdateInput.serializer)
      ..add(GVehicleVariantUpdateArgs.serializer)
      ..add(GVehicleVariantUpdateInput.serializer)
      ..add(GVehicleVariantWhereInput.serializer)
      ..add(GVehicleVariantWhereUniqueInput.serializer)
      ..add(GVehicleVariantsCountData.serializer)
      ..add(GVehicleVariantsCountReq.serializer)
      ..add(GVehicleVariantsCountVars.serializer)
      ..add(GVehicleVariantsData.serializer)
      ..add(GVehicleVariantsData_vehicleVariants.serializer)
      ..add(GVehicleVariantsData_vehicleVariants_colors.serializer)
      ..add(GVehicleVariantsData_vehicleVariants_colors_images.serializer)
      ..add(GVehicleVariantsData_vehicleVariants_colors_images_image.serializer)
      ..add(GVehicleVariantsData_vehicleVariants_prices.serializer)
      ..add(GVehicleVariantsData_vehicleVariants_prices_category.serializer)
      ..add(GVehicleVariantsData_vehicleVariants_vehicle.serializer)
      ..add(GVehicleVariantsData_vehicleVariants_vehicle_brand.serializer)
      ..add(GVehicleVariantsData_vehicleVariants_vehicle_type.serializer)
      ..add(GVehicleVariantsReq.serializer)
      ..add(GVehicleVariantsVars.serializer)
      ..add(GVehicleVideoCreateInput.serializer)
      ..add(GVehicleVideoManyRelationFilter.serializer)
      ..add(GVehicleVideoOrderByInput.serializer)
      ..add(GVehicleVideoRelateToManyForCreateInput.serializer)
      ..add(GVehicleVideoRelateToManyForUpdateInput.serializer)
      ..add(GVehicleVideoUpdateArgs.serializer)
      ..add(GVehicleVideoUpdateInput.serializer)
      ..add(GVehicleVideoWhereInput.serializer)
      ..add(GVehicleVideoWhereUniqueInput.serializer)
      ..add(GVehicleWhereInput.serializer)
      ..add(GVehicleWhereUniqueInput.serializer)
      ..add(GWalletCreateInput.serializer)
      ..add(GWalletOrderByInput.serializer)
      ..add(GWalletRelateToOneForCreateInput.serializer)
      ..add(GWalletRelateToOneForUpdateInput.serializer)
      ..add(GWalletTransactionCreateInput.serializer)
      ..add(GWalletTransactionOrderByInput.serializer)
      ..add(GWalletTransactionUpdateArgs.serializer)
      ..add(GWalletTransactionUpdateInput.serializer)
      ..add(GWalletTransactionWhereInput.serializer)
      ..add(GWalletTransactionWhereUniqueInput.serializer)
      ..add(GWalletUpdateArgs.serializer)
      ..add(GWalletUpdateInput.serializer)
      ..add(GWalletWhereInput.serializer)
      ..add(GWalletWhereUniqueInput.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAddressCreateInput)]),
          () => new ListBuilder<GAddressCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAddressWhereUniqueInput)]),
          () => new ListBuilder<GAddressWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GAddressWhereInput)]),
          () => new ListBuilder<GAddressWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GAddressWhereInput)]),
          () => new ListBuilder<GAddressWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GAddressWhereInput)]),
          () => new ListBuilder<GAddressWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAddressWhereUniqueInput)]),
          () => new ListBuilder<GAddressWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAddressWhereUniqueInput)]),
          () => new ListBuilder<GAddressWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAddressCreateInput)]),
          () => new ListBuilder<GAddressCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAddressWhereUniqueInput)]),
          () => new ListBuilder<GAddressWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GAppNotificationTemplateWhereInput)]),
          () => new ListBuilder<GAppNotificationTemplateWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GAppNotificationTemplateWhereInput)]),
          () => new ListBuilder<GAppNotificationTemplateWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GAppNotificationTemplateWhereInput)]),
          () => new ListBuilder<GAppNotificationTemplateWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAppNotificationWhereInput)]),
          () => new ListBuilder<GAppNotificationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAppNotificationWhereInput)]),
          () => new ListBuilder<GAppNotificationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAppNotificationWhereInput)]),
          () => new ListBuilder<GAppNotificationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GAppNotificationsData_appNotifications)]),
          () => new ListBuilder<GAppNotificationsData_appNotifications>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses)
          ]),
          () => new ListBuilder<
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GBrandWhereInput)]),
          () => new ListBuilder<GBrandWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GBrandWhereInput)]),
          () => new ListBuilder<GBrandWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GBrandWhereInput)]),
          () => new ListBuilder<GBrandWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCartItemCreateInput)]),
          () => new ListBuilder<GCartItemCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCartItemWhereUniqueInput)]),
          () => new ListBuilder<GCartItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCartItemWhereInput)]),
          () => new ListBuilder<GCartItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCartItemWhereInput)]),
          () => new ListBuilder<GCartItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCartItemWhereInput)]),
          () => new ListBuilder<GCartItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCartItemWhereUniqueInput)]),
          () => new ListBuilder<GCartItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCartItemWhereUniqueInput)]),
          () => new ListBuilder<GCartItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCartItemCreateInput)]),
          () => new ListBuilder<GCartItemCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCartItemWhereUniqueInput)]),
          () => new ListBuilder<GCartItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCategoriesData_categories)]),
          () => new ListBuilder<GCategoriesData_categories>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCategoryWhereInput)]),
          () => new ListBuilder<GCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCategoryWhereInput)]),
          () => new ListBuilder<GCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCategoryWhereInput)]),
          () => new ListBuilder<GCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCouponWhereInput)]),
          () => new ListBuilder<GCouponWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCouponWhereInput)]),
          () => new ListBuilder<GCouponWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCouponWhereInput)]),
          () => new ListBuilder<GCouponWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDateTime)]),
          () => new ListBuilder<GDateTime>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GDealerAddressCreateInput)]),
          () => new ListBuilder<GDealerAddressCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GDealerAddressWhereUniqueInput)]),
          () => new ListBuilder<GDealerAddressWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GDealerAddressWhereInput)]),
          () => new ListBuilder<GDealerAddressWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GDealerAddressWhereInput)]),
          () => new ListBuilder<GDealerAddressWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GDealerAddressWhereInput)]),
          () => new ListBuilder<GDealerAddressWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GDealerAddressWhereUniqueInput)]),
          () => new ListBuilder<GDealerAddressWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GDealerAddressWhereUniqueInput)]),
          () => new ListBuilder<GDealerAddressWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GDealerAddressCreateInput)]),
          () => new ListBuilder<GDealerAddressCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GDealerAddressWhereUniqueInput)]),
          () => new ListBuilder<GDealerAddressWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GDealerData_dealers)]),
          () => new ListBuilder<GDealerData_dealers>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDealerWhereInput)]),
          () => new ListBuilder<GDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDealerWhereInput)]),
          () => new ListBuilder<GDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GDealerWhereInput)]),
          () => new ListBuilder<GDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GEmailNotificationTemplateWhereInput)]),
          () => new ListBuilder<GEmailNotificationTemplateWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GEmailNotificationTemplateWhereInput)]),
          () => new ListBuilder<GEmailNotificationTemplateWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GEmailNotificationTemplateWhereInput)]),
          () => new ListBuilder<GEmailNotificationTemplateWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GExpertReviewWhereInput)]),
          () => new ListBuilder<GExpertReviewWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GExpertReviewWhereInput)]),
          () => new ListBuilder<GExpertReviewWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GExpertReviewWhereInput)]),
          () => new ListBuilder<GExpertReviewWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GFAQWhereInput)]),
          () => new ListBuilder<GFAQWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GFAQWhereInput)]),
          () => new ListBuilder<GFAQWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GFAQWhereInput)]),
          () => new ListBuilder<GFAQWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFavoriteCreateInput)]),
          () => new ListBuilder<GFavoriteCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFavoriteWhereUniqueInput)]),
          () => new ListBuilder<GFavoriteWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFavoriteWhereInput)]),
          () => new ListBuilder<GFavoriteWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFavoriteWhereInput)]),
          () => new ListBuilder<GFavoriteWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFavoriteWhereInput)]),
          () => new ListBuilder<GFavoriteWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFavoriteWhereUniqueInput)]),
          () => new ListBuilder<GFavoriteWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFavoriteWhereUniqueInput)]),
          () => new ListBuilder<GFavoriteWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFavoriteCreateInput)]),
          () => new ListBuilder<GFavoriteCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFavoriteWhereUniqueInput)]),
          () => new ListBuilder<GFavoriteWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFeedbackAttachmentCreateInput)]),
          () => new ListBuilder<GFeedbackAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFeedbackAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GFeedbackAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedbackAttachmentWhereInput)]),
          () => new ListBuilder<GFeedbackAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedbackAttachmentWhereInput)]),
          () => new ListBuilder<GFeedbackAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedbackAttachmentWhereInput)]),
          () => new ListBuilder<GFeedbackAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFeedbackAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GFeedbackAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFeedbackAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GFeedbackAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFeedbackAttachmentCreateInput)]),
          () => new ListBuilder<GFeedbackAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFeedbackAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GFeedbackAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedbackWhereInput)]),
          () => new ListBuilder<GFeedbackWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedbackWhereInput)]),
          () => new ListBuilder<GFeedbackWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GFeedbackWhereInput)]),
          () => new ListBuilder<GFeedbackWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeCreateInput)]),
          () => new ListBuilder<GGuaranteeCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeWhereUniqueInput)]),
          () => new ListBuilder<GGuaranteeWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeFileWhereInput)]),
          () => new ListBuilder<GGuaranteeFileWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeFileWhereInput)]),
          () => new ListBuilder<GGuaranteeFileWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeFileWhereInput)]),
          () => new ListBuilder<GGuaranteeFileWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeWhereInput)]),
          () => new ListBuilder<GGuaranteeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeWhereInput)]),
          () => new ListBuilder<GGuaranteeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeWhereInput)]),
          () => new ListBuilder<GGuaranteeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeWhereUniqueInput)]),
          () => new ListBuilder<GGuaranteeWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeWhereUniqueInput)]),
          () => new ListBuilder<GGuaranteeWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeCreateInput)]),
          () => new ListBuilder<GGuaranteeCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteeWhereUniqueInput)]),
          () => new ListBuilder<GGuaranteeWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGuaranteesData_guarantees)]),
          () => new ListBuilder<GGuaranteesData_guarantees>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GHelpSupportWhereInput)]),
          () => new ListBuilder<GHelpSupportWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GHelpSupportWhereInput)]),
          () => new ListBuilder<GHelpSupportWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GHelpSupportWhereInput)]),
          () => new ListBuilder<GHelpSupportWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GKeywordCreateInput)]),
          () => new ListBuilder<GKeywordCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GKeywordWhereUniqueInput)]),
          () => new ListBuilder<GKeywordWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GKeywordWhereInput)]),
          () => new ListBuilder<GKeywordWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GKeywordWhereInput)]),
          () => new ListBuilder<GKeywordWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GKeywordWhereInput)]),
          () => new ListBuilder<GKeywordWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GKeywordWhereUniqueInput)]),
          () => new ListBuilder<GKeywordWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GKeywordWhereUniqueInput)]),
          () => new ListBuilder<GKeywordWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GKeywordCreateInput)]),
          () => new ListBuilder<GKeywordCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GKeywordWhereUniqueInput)]),
          () => new ListBuilder<GKeywordWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsAttachmentCreateInput)]),
          () => new ListBuilder<GNewsAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GNewsAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GNewsAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsAttachmentWhereInput)]),
          () => new ListBuilder<GNewsAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsAttachmentWhereInput)]),
          () => new ListBuilder<GNewsAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsAttachmentWhereInput)]),
          () => new ListBuilder<GNewsAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GNewsAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GNewsAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GNewsAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GNewsAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsAttachmentCreateInput)]),
          () => new ListBuilder<GNewsAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GNewsAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GNewsAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsCategoryCreateInput)]),
          () => new ListBuilder<GNewsCategoryCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsCategoryWhereUniqueInput)]),
          () => new ListBuilder<GNewsCategoryWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsCategoryWhereInput)]),
          () => new ListBuilder<GNewsCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsCategoryWhereInput)]),
          () => new ListBuilder<GNewsCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsCategoryWhereInput)]),
          () => new ListBuilder<GNewsCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsCategoryWhereUniqueInput)]),
          () => new ListBuilder<GNewsCategoryWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsCategoryWhereUniqueInput)]),
          () => new ListBuilder<GNewsCategoryWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsCategoryCreateInput)]),
          () => new ListBuilder<GNewsCategoryCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsCategoryWhereUniqueInput)]),
          () => new ListBuilder<GNewsCategoryWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsItemWhereInput)]),
          () => new ListBuilder<GNewsItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsItemWhereInput)]),
          () => new ListBuilder<GNewsItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewsItemWhereInput)]),
          () => new ListBuilder<GNewsItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNotificationTypeWhereInput)]),
          () => new ListBuilder<GNotificationTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNotificationTypeWhereInput)]),
          () => new ListBuilder<GNotificationTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNotificationTypeWhereInput)]),
          () => new ListBuilder<GNotificationTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GOfferWhereInput)]),
          () => new ListBuilder<GOfferWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GOfferWhereInput)]),
          () => new ListBuilder<GOfferWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GOfferWhereInput)]),
          () => new ListBuilder<GOfferWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOrderCancellationRequestWhereInput)]),
          () => new ListBuilder<GOrderCancellationRequestWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOrderCancellationRequestWhereInput)]),
          () => new ListBuilder<GOrderCancellationRequestWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOrderCancellationRequestWhereInput)]),
          () => new ListBuilder<GOrderCancellationRequestWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOrderRejectionByDealerWhereInput)]),
          () => new ListBuilder<GOrderRejectionByDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOrderRejectionByDealerWhereInput)]),
          () => new ListBuilder<GOrderRejectionByDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOrderRejectionByDealerWhereInput)]),
          () => new ListBuilder<GOrderRejectionByDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GOrderWhereInput)]),
          () => new ListBuilder<GOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GOrderWhereInput)]),
          () => new ListBuilder<GOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GOrderWhereInput)]),
          () => new ListBuilder<GOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPaymentCreateInput)]),
          () => new ListBuilder<GPaymentCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPaymentWhereUniqueInput)]),
          () => new ListBuilder<GPaymentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPaymentWhereInput)]),
          () => new ListBuilder<GPaymentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPaymentWhereInput)]),
          () => new ListBuilder<GPaymentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPaymentWhereInput)]),
          () => new ListBuilder<GPaymentWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPaymentWhereUniqueInput)]),
          () => new ListBuilder<GPaymentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPaymentWhereUniqueInput)]),
          () => new ListBuilder<GPaymentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPaymentCreateInput)]),
          () => new ListBuilder<GPaymentCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPaymentWhereUniqueInput)]),
          () => new ListBuilder<GPaymentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPriceCategoriesData_priceCategories)]),
          () => new ListBuilder<GPriceCategoriesData_priceCategories>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPriceCategoryWhereInput)]),
          () => new ListBuilder<GPriceCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPriceCategoryWhereInput)]),
          () => new ListBuilder<GPriceCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPriceCategoryWhereInput)]),
          () => new ListBuilder<GPriceCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPriceCreateInput)]),
          () => new ListBuilder<GPriceCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPriceWhereUniqueInput)]),
          () => new ListBuilder<GPriceWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPriceUpdateArgs)]),
          () => new ListBuilder<GPriceUpdateArgs>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPriceWhereInput)]),
          () => new ListBuilder<GPriceWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPriceWhereInput)]),
          () => new ListBuilder<GPriceWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPriceWhereInput)]),
          () => new ListBuilder<GPriceWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPriceWhereUniqueInput)]),
          () => new ListBuilder<GPriceWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPriceWhereUniqueInput)]),
          () => new ListBuilder<GPriceWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPriceCreateInput)]),
          () => new ListBuilder<GPriceCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPriceWhereUniqueInput)]),
          () => new ListBuilder<GPriceWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductCreateInput)]),
          () => new ListBuilder<GProductCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductWhereUniqueInput)]),
          () => new ListBuilder<GProductWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductDealerStockRequestWhereInput)]),
          () => new ListBuilder<GProductDealerStockRequestWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductDealerStockRequestWhereInput)]),
          () => new ListBuilder<GProductDealerStockRequestWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductDealerStockRequestWhereInput)]),
          () => new ListBuilder<GProductDealerStockRequestWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductDealerWhereInput)]),
          () => new ListBuilder<GProductDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductDealerWhereInput)]),
          () => new ListBuilder<GProductDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductDealerWhereInput)]),
          () => new ListBuilder<GProductDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductGalleryItemCreateInput)]),
          () => new ListBuilder<GProductGalleryItemCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductGalleryItemWhereUniqueInput)]),
          () => new ListBuilder<GProductGalleryItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductGalleryItemWhereInput)]),
          () => new ListBuilder<GProductGalleryItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductGalleryItemWhereInput)]),
          () => new ListBuilder<GProductGalleryItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductGalleryItemWhereInput)]),
          () => new ListBuilder<GProductGalleryItemWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductGalleryItemWhereUniqueInput)]),
          () => new ListBuilder<GProductGalleryItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductGalleryItemWhereUniqueInput)]),
          () => new ListBuilder<GProductGalleryItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductGalleryItemCreateInput)]),
          () => new ListBuilder<GProductGalleryItemCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductGalleryItemWhereUniqueInput)]),
          () => new ListBuilder<GProductGalleryItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductImageCreateInput)]),
          () => new ListBuilder<GProductImageCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductImageWhereUniqueInput)]),
          () => new ListBuilder<GProductImageWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductImageWhereInput)]),
          () => new ListBuilder<GProductImageWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductImageWhereInput)]),
          () => new ListBuilder<GProductImageWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductImageWhereInput)]),
          () => new ListBuilder<GProductImageWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductImageWhereUniqueInput)]),
          () => new ListBuilder<GProductImageWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductImageWhereUniqueInput)]),
          () => new ListBuilder<GProductImageWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductImageCreateInput)]),
          () => new ListBuilder<GProductImageCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductImageWhereUniqueInput)]),
          () => new ListBuilder<GProductImageWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderCreateInput)]),
          () => new ListBuilder<GProductOrderCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderWhereUniqueInput)]),
          () => new ListBuilder<GProductOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderOrderByInput)]),
          () => new ListBuilder<GProductOrderOrderByInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderWhereInput)]),
          () => new ListBuilder<GProductOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderWhereInput)]),
          () => new ListBuilder<GProductOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderWhereInput)]),
          () => new ListBuilder<GProductOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderWhereUniqueInput)]),
          () => new ListBuilder<GProductOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderWhereUniqueInput)]),
          () => new ListBuilder<GProductOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderCreateInput)]),
          () => new ListBuilder<GProductOrderCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductOrderWhereUniqueInput)]),
          () => new ListBuilder<GProductOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductOrdersData_productOrders)]),
          () => new ListBuilder<GProductOrdersData_productOrders>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductOrdersData_productOrders_dealer_prices)
          ]),
          () =>
              new ListBuilder<GProductOrdersData_productOrders_dealer_prices>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GProductOrdersData_productOrders_order_user_addresses)
          ]),
          () => new ListBuilder<
              GProductOrdersData_productOrders_order_user_addresses>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductReelCreateInput)]),
          () => new ListBuilder<GProductReelCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductReelWhereUniqueInput)]),
          () => new ListBuilder<GProductReelWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductReelWhereInput)]),
          () => new ListBuilder<GProductReelWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductReelWhereInput)]),
          () => new ListBuilder<GProductReelWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductReelWhereInput)]),
          () => new ListBuilder<GProductReelWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductReelWhereUniqueInput)]),
          () => new ListBuilder<GProductReelWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductReelWhereUniqueInput)]),
          () => new ListBuilder<GProductReelWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductReelCreateInput)]),
          () => new ListBuilder<GProductReelCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductReelWhereUniqueInput)]),
          () => new ListBuilder<GProductReelWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductSpecificationCreateInput)]),
          () => new ListBuilder<GProductSpecificationCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductSpecificationWhereUniqueInput)]),
          () => new ListBuilder<GProductSpecificationWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductSpecificationWhereInput)]),
          () => new ListBuilder<GProductSpecificationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductSpecificationWhereInput)]),
          () => new ListBuilder<GProductSpecificationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductSpecificationWhereInput)]),
          () => new ListBuilder<GProductSpecificationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductSpecificationWhereUniqueInput)]),
          () => new ListBuilder<GProductSpecificationWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductSpecificationWhereUniqueInput)]),
          () => new ListBuilder<GProductSpecificationWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductSpecificationCreateInput)]),
          () => new ListBuilder<GProductSpecificationCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductSpecificationWhereUniqueInput)]),
          () => new ListBuilder<GProductSpecificationWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductTypeWhereInput)]),
          () => new ListBuilder<GProductTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductTypeWhereInput)]),
          () => new ListBuilder<GProductTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductTypeWhereInput)]),
          () => new ListBuilder<GProductTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductTypesData_productTypes)]),
          () => new ListBuilder<GProductTypesData_productTypes>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVariantCreateInput)]),
          () => new ListBuilder<GProductVariantCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductVariantWhereUniqueInput)]),
          () => new ListBuilder<GProductVariantWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductVariantData_productVariant_prices)
          ]),
          () => new ListBuilder<GProductVariantData_productVariant_prices>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductVariantData_productVariant_specifications)
          ]),
          () => new ListBuilder<
              GProductVariantData_productVariant_specifications>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductVariantData_productVariant_gallery)
          ]),
          () => new ListBuilder<GProductVariantData_productVariant_gallery>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductVariantData_productVariant_tags)]),
          () => new ListBuilder<GProductVariantData_productVariant_tags>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductVariantData_productVariant_images)
          ]),
          () => new ListBuilder<GProductVariantData_productVariant_images>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GProductVariantData_productVariant_product_specifications)
          ]),
          () => new ListBuilder<
              GProductVariantData_productVariant_product_specifications>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVariantWhereInput)]),
          () => new ListBuilder<GProductVariantWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVariantWhereInput)]),
          () => new ListBuilder<GProductVariantWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVariantWhereInput)]),
          () => new ListBuilder<GProductVariantWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductVariantWhereUniqueInput)]),
          () => new ListBuilder<GProductVariantWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductVariantWhereUniqueInput)]),
          () => new ListBuilder<GProductVariantWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVariantCreateInput)]),
          () => new ListBuilder<GProductVariantCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductVariantWhereUniqueInput)]),
          () => new ListBuilder<GProductVariantWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProductVariantsData_productVariants)]),
          () => new ListBuilder<GProductVariantsData_productVariants>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductVariantsData_productVariants_prices)
          ]),
          () => new ListBuilder<GProductVariantsData_productVariants_prices>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductVariantsData_productVariants_specifications)
          ]),
          () => new ListBuilder<
              GProductVariantsData_productVariants_specifications>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductVariantsData_productVariants_gallery)
          ]),
          () => new ListBuilder<GProductVariantsData_productVariants_gallery>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductVariantsData_productVariants_tags)
          ]),
          () => new ListBuilder<GProductVariantsData_productVariants_tags>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProductVariantsData_productVariants_images)
          ]),
          () => new ListBuilder<GProductVariantsData_productVariants_images>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GProductVariantsData_productVariants_product_specifications)
          ]),
          () => new ListBuilder<
              GProductVariantsData_productVariants_product_specifications>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVideoCreateInput)]),
          () => new ListBuilder<GProductVideoCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVideoWhereUniqueInput)]),
          () => new ListBuilder<GProductVideoWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVideoWhereInput)]),
          () => new ListBuilder<GProductVideoWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVideoWhereInput)]),
          () => new ListBuilder<GProductVideoWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVideoWhereInput)]),
          () => new ListBuilder<GProductVideoWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVideoWhereUniqueInput)]),
          () => new ListBuilder<GProductVideoWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVideoWhereUniqueInput)]),
          () => new ListBuilder<GProductVideoWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVideoCreateInput)]),
          () => new ListBuilder<GProductVideoCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVideoWhereUniqueInput)]),
          () => new ListBuilder<GProductVideoWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GProductWhereInput)]),
          () => new ListBuilder<GProductWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GProductWhereInput)]),
          () => new ListBuilder<GProductWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GProductWhereInput)]),
          () => new ListBuilder<GProductWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductWhereUniqueInput)]),
          () => new ListBuilder<GProductWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductWhereUniqueInput)]),
          () => new ListBuilder<GProductWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductCreateInput)]),
          () => new ListBuilder<GProductCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductWhereUniqueInput)]),
          () => new ListBuilder<GProductWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReferralCodeWhereInput)]),
          () => new ListBuilder<GReferralCodeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReferralCodeWhereInput)]),
          () => new ListBuilder<GReferralCodeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReferralCodeWhereInput)]),
          () => new ListBuilder<GReferralCodeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReferralUserWhereInput)]),
          () => new ListBuilder<GReferralUserWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReferralUserWhereInput)]),
          () => new ListBuilder<GReferralUserWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReferralUserWhereInput)]),
          () => new ListBuilder<GReferralUserWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReportAttachmentCreateInput)]),
          () => new ListBuilder<GReportAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GReportAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GReportAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReportAttachmentWhereInput)]),
          () => new ListBuilder<GReportAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReportAttachmentWhereInput)]),
          () => new ListBuilder<GReportAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReportAttachmentWhereInput)]),
          () => new ListBuilder<GReportAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GReportAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GReportAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GReportAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GReportAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GReportAttachmentCreateInput)]),
          () => new ListBuilder<GReportAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GReportAttachmentWhereUniqueInput)]),
          () => new ListBuilder<GReportAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GReportWhereInput)]),
          () => new ListBuilder<GReportWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GReportWhereInput)]),
          () => new ListBuilder<GReportWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GReportWhereInput)]),
          () => new ListBuilder<GReportWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSMSNotificationTemplateWhereInput)]),
          () => new ListBuilder<GSMSNotificationTemplateWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSMSNotificationTemplateWhereInput)]),
          () => new ListBuilder<GSMSNotificationTemplateWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSMSNotificationTemplateWhereInput)]),
          () => new ListBuilder<GSMSNotificationTemplateWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSpecificationCategoryWhereInput)]),
          () => new ListBuilder<GSpecificationCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSpecificationCategoryWhereInput)]),
          () => new ListBuilder<GSpecificationCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSpecificationCategoryWhereInput)]),
          () => new ListBuilder<GSpecificationCategoryWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GSpecificationWhereInput)]),
          () => new ListBuilder<GSpecificationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GSpecificationWhereInput)]),
          () => new ListBuilder<GSpecificationWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GSpecificationWhereInput)]),
          () => new ListBuilder<GSpecificationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GTagCreateInput)]),
          () => new ListBuilder<GTagCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTagWhereUniqueInput)]),
          () => new ListBuilder<GTagWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GTagWhereInput)]),
          () => new ListBuilder<GTagWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GTagWhereInput)]),
          () => new ListBuilder<GTagWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GTagWhereInput)]),
          () => new ListBuilder<GTagWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTagWhereUniqueInput)]),
          () => new ListBuilder<GTagWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTagWhereUniqueInput)]),
          () => new ListBuilder<GTagWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GTagCreateInput)]),
          () => new ListBuilder<GTagCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTagWhereUniqueInput)]),
          () => new ListBuilder<GTagWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTestDriveDealerWhereInput)]),
          () => new ListBuilder<GTestDriveDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTestDriveDealerWhereInput)]),
          () => new ListBuilder<GTestDriveDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTestDriveDealerWhereInput)]),
          () => new ListBuilder<GTestDriveDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTestDriveOrderCreateInput)]),
          () => new ListBuilder<GTestDriveOrderCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GTestDriveOrderWhereUniqueInput)]),
          () => new ListBuilder<GTestDriveOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTestDriveOrderOrderByInput)]),
          () => new ListBuilder<GTestDriveOrderOrderByInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTestDriveOrderWhereInput)]),
          () => new ListBuilder<GTestDriveOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTestDriveOrderWhereInput)]),
          () => new ListBuilder<GTestDriveOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTestDriveOrderWhereInput)]),
          () => new ListBuilder<GTestDriveOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GTestDriveOrderWhereUniqueInput)]),
          () => new ListBuilder<GTestDriveOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GTestDriveOrderWhereUniqueInput)]),
          () => new ListBuilder<GTestDriveOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTestDriveOrderCreateInput)]),
          () => new ListBuilder<GTestDriveOrderCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GTestDriveOrderWhereUniqueInput)]),
          () => new ListBuilder<GTestDriveOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GTestDriveOrdersData_testDriveOrders)]),
          () => new ListBuilder<GTestDriveOrdersData_testDriveOrders>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images)
          ]),
          () => new ListBuilder<
              GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GTestDriveOrdersData_testDriveOrders_order_user_addresses)
          ]),
          () => new ListBuilder<
              GTestDriveOrdersData_testDriveOrders_order_user_addresses>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUpdateVehicleDealerData_updateVehicleDealer_prices)
          ]),
          () => new ListBuilder<
              GUpdateVehicleDealerData_updateVehicleDealer_prices>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GUpdateVehicleDealerData_updateVehicleDealer_guarantees)
          ]),
          () => new ListBuilder<
              GUpdateVehicleDealerData_updateVehicleDealer_guarantees>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images)
          ]),
          () => new ListBuilder<
              GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserData_user_addresses)]),
          () => new ListBuilder<GUserData_user_addresses>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserData_user_favorites)]),
          () => new ListBuilder<GUserData_user_favorites>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserProductReviewAttachmentCreateInput)]),
          () => new ListBuilder<GUserProductReviewAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserProductReviewAttachmentWhereUniqueInput)
          ]),
          () => new ListBuilder<GUserProductReviewAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserProductReviewAttachmentWhereInput)]),
          () => new ListBuilder<GUserProductReviewAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserProductReviewAttachmentWhereInput)]),
          () => new ListBuilder<GUserProductReviewAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserProductReviewAttachmentWhereInput)]),
          () => new ListBuilder<GUserProductReviewAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserProductReviewAttachmentWhereUniqueInput)
          ]),
          () => new ListBuilder<GUserProductReviewAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserProductReviewAttachmentWhereUniqueInput)
          ]),
          () => new ListBuilder<GUserProductReviewAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserProductReviewAttachmentCreateInput)]),
          () => new ListBuilder<GUserProductReviewAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserProductReviewAttachmentWhereUniqueInput)
          ]),
          () => new ListBuilder<GUserProductReviewAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserProductReviewWhereInput)]),
          () => new ListBuilder<GUserProductReviewWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserProductReviewWhereInput)]),
          () => new ListBuilder<GUserProductReviewWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserProductReviewWhereInput)]),
          () => new ListBuilder<GUserProductReviewWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserVehicleReviewAttachmentCreateInput)]),
          () => new ListBuilder<GUserVehicleReviewAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserVehicleReviewAttachmentWhereUniqueInput)
          ]),
          () => new ListBuilder<GUserVehicleReviewAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserVehicleReviewAttachmentWhereInput)]),
          () => new ListBuilder<GUserVehicleReviewAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserVehicleReviewAttachmentWhereInput)]),
          () => new ListBuilder<GUserVehicleReviewAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserVehicleReviewAttachmentWhereInput)]),
          () => new ListBuilder<GUserVehicleReviewAttachmentWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserVehicleReviewAttachmentWhereUniqueInput)
          ]),
          () => new ListBuilder<GUserVehicleReviewAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserVehicleReviewAttachmentWhereUniqueInput)
          ]),
          () => new ListBuilder<GUserVehicleReviewAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserVehicleReviewAttachmentCreateInput)]),
          () => new ListBuilder<GUserVehicleReviewAttachmentCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserVehicleReviewAttachmentWhereUniqueInput)
          ]),
          () => new ListBuilder<GUserVehicleReviewAttachmentWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserVehicleReviewWhereInput)]),
          () => new ListBuilder<GUserVehicleReviewWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserVehicleReviewWhereInput)]),
          () => new ListBuilder<GUserVehicleReviewWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserVehicleReviewWhereInput)]),
          () => new ListBuilder<GUserVehicleReviewWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GUserWhereInput)]),
          () => new ListBuilder<GUserWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GUserWhereInput)]),
          () => new ListBuilder<GUserWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GUserWhereInput)]),
          () => new ListBuilder<GUserWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleColorCreateInput)]),
          () => new ListBuilder<GVehicleColorCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleColorWhereUniqueInput)]),
          () => new ListBuilder<GVehicleColorWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleColorWhereInput)]),
          () => new ListBuilder<GVehicleColorWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleColorWhereInput)]),
          () => new ListBuilder<GVehicleColorWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleColorWhereInput)]),
          () => new ListBuilder<GVehicleColorWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleColorWhereUniqueInput)]),
          () => new ListBuilder<GVehicleColorWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleColorWhereUniqueInput)]),
          () => new ListBuilder<GVehicleColorWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleColorCreateInput)]),
          () => new ListBuilder<GVehicleColorCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleColorWhereUniqueInput)]),
          () => new ListBuilder<GVehicleColorWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleCreateInput)]),
          () => new ListBuilder<GVehicleCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleWhereUniqueInput)]),
          () => new ListBuilder<GVehicleWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleDealerStockRequestWhereInput)]),
          () => new ListBuilder<GVehicleDealerStockRequestWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleDealerStockRequestWhereInput)]),
          () => new ListBuilder<GVehicleDealerStockRequestWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleDealerStockRequestWhereInput)]),
          () => new ListBuilder<GVehicleDealerStockRequestWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleDealerWhereInput)]),
          () => new ListBuilder<GVehicleDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleDealerWhereInput)]),
          () => new ListBuilder<GVehicleDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleDealerWhereInput)]),
          () => new ListBuilder<GVehicleDealerWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleDealersData_vehicleDealers)]),
          () => new ListBuilder<GVehicleDealersData_vehicleDealers>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GVehicleDealersData_vehicleDealers_prices)
          ]),
          () => new ListBuilder<GVehicleDealersData_vehicleDealers_prices>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GVehicleDealersData_vehicleDealers_guarantees)
          ]),
          () =>
              new ListBuilder<GVehicleDealersData_vehicleDealers_guarantees>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GVehicleDealersData_vehicleDealers_vehicleColor_images)
          ]),
          () => new ListBuilder<
              GVehicleDealersData_vehicleDealers_vehicleColor_images>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleGalleryItemCreateInput)]),
          () => new ListBuilder<GVehicleGalleryItemCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleGalleryItemWhereUniqueInput)]),
          () => new ListBuilder<GVehicleGalleryItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleGalleryItemWhereInput)]),
          () => new ListBuilder<GVehicleGalleryItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleGalleryItemWhereInput)]),
          () => new ListBuilder<GVehicleGalleryItemWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleGalleryItemWhereInput)]),
          () => new ListBuilder<GVehicleGalleryItemWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleGalleryItemWhereUniqueInput)]),
          () => new ListBuilder<GVehicleGalleryItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleGalleryItemWhereUniqueInput)]),
          () => new ListBuilder<GVehicleGalleryItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleGalleryItemCreateInput)]),
          () => new ListBuilder<GVehicleGalleryItemCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleGalleryItemWhereUniqueInput)]),
          () => new ListBuilder<GVehicleGalleryItemWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleImageCreateInput)]),
          () => new ListBuilder<GVehicleImageCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleImageWhereUniqueInput)]),
          () => new ListBuilder<GVehicleImageWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleImageWhereInput)]),
          () => new ListBuilder<GVehicleImageWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleImageWhereInput)]),
          () => new ListBuilder<GVehicleImageWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleImageWhereInput)]),
          () => new ListBuilder<GVehicleImageWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleImageWhereUniqueInput)]),
          () => new ListBuilder<GVehicleImageWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleImageWhereUniqueInput)]),
          () => new ListBuilder<GVehicleImageWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleImageCreateInput)]),
          () => new ListBuilder<GVehicleImageCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleImageWhereUniqueInput)]),
          () => new ListBuilder<GVehicleImageWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleOrderAdditionalInfoWhereInput)]),
          () => new ListBuilder<GVehicleOrderAdditionalInfoWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleOrderAdditionalInfoWhereInput)]),
          () => new ListBuilder<GVehicleOrderAdditionalInfoWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleOrderAdditionalInfoWhereInput)]),
          () => new ListBuilder<GVehicleOrderAdditionalInfoWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderCreateInput)]),
          () => new ListBuilder<GVehicleOrderCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderWhereUniqueInput)]),
          () => new ListBuilder<GVehicleOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderOrderByInput)]),
          () => new ListBuilder<GVehicleOrderOrderByInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderWhereInput)]),
          () => new ListBuilder<GVehicleOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderWhereInput)]),
          () => new ListBuilder<GVehicleOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderWhereInput)]),
          () => new ListBuilder<GVehicleOrderWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderWhereUniqueInput)]),
          () => new ListBuilder<GVehicleOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderWhereUniqueInput)]),
          () => new ListBuilder<GVehicleOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderCreateInput)]),
          () => new ListBuilder<GVehicleOrderCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleOrderWhereUniqueInput)]),
          () => new ListBuilder<GVehicleOrderWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleOrdersData_vehicleOrders)]),
          () => new ListBuilder<GVehicleOrdersData_vehicleOrders>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GVehicleOrdersData_vehicleOrders_dealer_prices)
          ]),
          () =>
              new ListBuilder<GVehicleOrdersData_vehicleOrders_dealer_prices>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images)
          ]),
          () => new ListBuilder<
              GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GVehicleOrdersData_vehicleOrders_order_user_addresses)
          ]),
          () => new ListBuilder<
              GVehicleOrdersData_vehicleOrders_order_user_addresses>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleReelCreateInput)]),
          () => new ListBuilder<GVehicleReelCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleReelWhereUniqueInput)]),
          () => new ListBuilder<GVehicleReelWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleReelWhereInput)]),
          () => new ListBuilder<GVehicleReelWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleReelWhereInput)]),
          () => new ListBuilder<GVehicleReelWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleReelWhereInput)]),
          () => new ListBuilder<GVehicleReelWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleReelWhereUniqueInput)]),
          () => new ListBuilder<GVehicleReelWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleReelWhereUniqueInput)]),
          () => new ListBuilder<GVehicleReelWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleReelCreateInput)]),
          () => new ListBuilder<GVehicleReelCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleReelWhereUniqueInput)]),
          () => new ListBuilder<GVehicleReelWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSpecificationCreateInput)]),
          () => new ListBuilder<GVehicleSpecificationCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSpecificationWhereUniqueInput)]),
          () => new ListBuilder<GVehicleSpecificationWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSpecificationWhereInput)]),
          () => new ListBuilder<GVehicleSpecificationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSpecificationWhereInput)]),
          () => new ListBuilder<GVehicleSpecificationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSpecificationWhereInput)]),
          () => new ListBuilder<GVehicleSpecificationWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSpecificationWhereUniqueInput)]),
          () => new ListBuilder<GVehicleSpecificationWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSpecificationWhereUniqueInput)]),
          () => new ListBuilder<GVehicleSpecificationWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSpecificationCreateInput)]),
          () => new ListBuilder<GVehicleSpecificationCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSpecificationWhereUniqueInput)]),
          () => new ListBuilder<GVehicleSpecificationWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleSubTypeCreateInput)]),
          () => new ListBuilder<GVehicleSubTypeCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSubTypeWhereUniqueInput)]),
          () => new ListBuilder<GVehicleSubTypeWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleSubTypeWhereInput)]),
          () => new ListBuilder<GVehicleSubTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleSubTypeWhereInput)]),
          () => new ListBuilder<GVehicleSubTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleSubTypeWhereInput)]),
          () => new ListBuilder<GVehicleSubTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSubTypeWhereUniqueInput)]),
          () => new ListBuilder<GVehicleSubTypeWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSubTypeWhereUniqueInput)]),
          () => new ListBuilder<GVehicleSubTypeWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleSubTypeCreateInput)]),
          () => new ListBuilder<GVehicleSubTypeCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleSubTypeWhereUniqueInput)]),
          () => new ListBuilder<GVehicleSubTypeWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleTypeWhereInput)]),
          () => new ListBuilder<GVehicleTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleTypeWhereInput)]),
          () => new ListBuilder<GVehicleTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleTypeWhereInput)]),
          () => new ListBuilder<GVehicleTypeWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVariantCreateInput)]),
          () => new ListBuilder<GVehicleVariantCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleVariantWhereUniqueInput)]),
          () => new ListBuilder<GVehicleVariantWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVariantOrderByInput)]),
          () => new ListBuilder<GVehicleVariantOrderByInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVariantWhereInput)]),
          () => new ListBuilder<GVehicleVariantWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVariantWhereInput)]),
          () => new ListBuilder<GVehicleVariantWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVariantWhereInput)]),
          () => new ListBuilder<GVehicleVariantWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleVariantWhereUniqueInput)]),
          () => new ListBuilder<GVehicleVariantWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleVariantWhereUniqueInput)]),
          () => new ListBuilder<GVehicleVariantWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVariantCreateInput)]),
          () => new ListBuilder<GVehicleVariantCreateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleVariantWhereUniqueInput)]),
          () => new ListBuilder<GVehicleVariantWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GVehicleVariantsData_vehicleVariants)]),
          () => new ListBuilder<GVehicleVariantsData_vehicleVariants>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GVehicleVariantsData_vehicleVariants_colors_images)
          ]),
          () => new ListBuilder<
              GVehicleVariantsData_vehicleVariants_colors_images>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GVehicleVariantsData_vehicleVariants_prices)
          ]),
          () => new ListBuilder<GVehicleVariantsData_vehicleVariants_prices>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GVehicleVariantsData_vehicleVariants_colors)
          ]),
          () => new ListBuilder<GVehicleVariantsData_vehicleVariants_colors>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVideoCreateInput)]),
          () => new ListBuilder<GVehicleVideoCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVideoWhereUniqueInput)]),
          () => new ListBuilder<GVehicleVideoWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVideoWhereInput)]),
          () => new ListBuilder<GVehicleVideoWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVideoWhereInput)]),
          () => new ListBuilder<GVehicleVideoWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVideoWhereInput)]),
          () => new ListBuilder<GVehicleVideoWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVideoWhereUniqueInput)]),
          () => new ListBuilder<GVehicleVideoWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVideoWhereUniqueInput)]),
          () => new ListBuilder<GVehicleVideoWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVideoCreateInput)]),
          () => new ListBuilder<GVehicleVideoCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleVideoWhereUniqueInput)]),
          () => new ListBuilder<GVehicleVideoWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GVehicleWhereInput)]),
          () => new ListBuilder<GVehicleWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GVehicleWhereInput)]),
          () => new ListBuilder<GVehicleWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GVehicleWhereInput)]),
          () => new ListBuilder<GVehicleWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleWhereUniqueInput)]),
          () => new ListBuilder<GVehicleWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleWhereUniqueInput)]),
          () => new ListBuilder<GVehicleWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleCreateInput)]),
          () => new ListBuilder<GVehicleCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GVehicleWhereUniqueInput)]),
          () => new ListBuilder<GVehicleWhereUniqueInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GWalletTransactionWhereInput)]),
          () => new ListBuilder<GWalletTransactionWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GWalletTransactionWhereInput)]),
          () => new ListBuilder<GWalletTransactionWhereInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GWalletTransactionWhereInput)]),
          () => new ListBuilder<GWalletTransactionWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GWalletWhereInput)]),
          () => new ListBuilder<GWalletWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GWalletWhereInput)]),
          () => new ListBuilder<GWalletWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GWalletWhereInput)]),
          () => new ListBuilder<GWalletWhereInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(double)]),
          () => new ListBuilder<double>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(double)]),
          () => new ListBuilder<double>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProductVariantOrderByInput)]),
          () => new ListBuilder<GProductVariantOrderByInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(double)]),
          () => new ListBuilder<double>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(double)]),
          () => new ListBuilder<double>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(double)]),
          () => new ListBuilder<double>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(double)]),
          () => new ListBuilder<double>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GUpdatePricesData_updatePrices)]),
          () => new ListBuilder<GUpdatePricesData_updatePrices?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
